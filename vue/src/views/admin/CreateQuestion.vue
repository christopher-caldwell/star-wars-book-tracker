<template lang='pug'>
	v-container
		v-row
			v-col(align='center')
				h1.sw-yellow Submit Question
		v-row
			v-col
				v-textarea(
					auto-grow
					rows=1
					outlined
					:color="swYellow"
					label='Title'
					v-model="title"
				)
		v-row
			v-col
				v-autocomplete(
					v-model="domain"
					:items="questionDomains"
					label='Domain'
					:color="swYellow"
					outlined
				)
		v-row
			v-col
				v-autocomplete(
					v-model="tags"
					:items="questionTags"
					label='Tags'
					:color="swYellow"
					outlined
					multiple
				)
		v-row
			v-col
				h4.sw-yellow Correct Answer
		v-row
			v-col
				v-divider
		v-row
			v-col
				v-textarea(
					auto-grow
					rows=1
					outlined
					:color="swYellow"
					label='Answer'
					v-model="correctAnswer"
				)
		v-row(align='center')
			v-col(align-self='start')
				h4.sw-yellow Incorrect Answers.
			v-col(cols=3 align-self='start')
				h4.sw-yellow {{ numberOfIncorrectAnswers }} of 3
			v-col(cols=2 align-self='start')
				v-icon.create-icon(color='success' v-if="areSufficientIncorrectAnswers" ) mdi-check
				v-icon.create-icon(color='error' v-else) mdi-close
		v-row(@click="isShowingIncorrectAnswers = !isShowingIncorrectAnswers")
			v-col(cols=5)
				h5.sw-yellow.underline.center Edit Incorrect Answers
		IncorrectAnswersHolder(:incorrectAnswers="incorrectAnswers" :isShown="isShowingIncorrectAnswers")
		v-row
			v-col
				v-divider
		v-row(align='center')
			v-col
				v-textarea(
					auto-grow
					rows=1
					append-outer-icon='mdi-plus'
					@click:append-outer="addIncorrectAnswer"
					outlined
					:color="swYellow"
					label='Answer'
					v-model="incorrectAnswer"
				)
		v-row(align='center')
			v-col(align='center')
				v-btn(:color="swYellow" :loading="isLoading" @click="submitQuestion") Submit
</template>

<script>
import { questionDomains, questionTags, swYellow } from '@/data/constants'
import { mapActions } from 'vuex'
export default {
	name: 'CreateQuestion',
	components: {
		
	},
	data(){
		return {
			isLoading: false,
			domain: null,
			title: null,
			correctAnswer: null,
			incorrectAnswer: null,
			tags: [],
			isShowingIncorrectAnswers: false,
			incorrectAnswers: [],
			questionDomains,
			questionTags,
			swYellow
		}
	},
	computed: {
		areSufficientIncorrectAnswers(){
			return this.numberOfIncorrectAnswers >= 3
		},
		numberOfIncorrectAnswers(){
			return this.incorrectAnswers.length
		}
	},
	methods: {
		...mapActions('question', ['createQuestion']),
		addIncorrectAnswer(){
			this.incorrectAnswers.push(this.incorrectAnswer)
			this.incorrectAnswer = ''
		},
		async submitQuestion(){
			const question = {
				title: this.title,
				domain: this.domain,
				tags: this.tags,
				correctAnswer: this.correctAnswer,
				incorrectAnswers: this.incorrectAnswers
			}
			try {
				this.isLoading = true
				await this.createQuestion(question)
				this.isLoading = false
			} catch(error){
				this.isLoading = false
				console.error('error', error)
			}
		}
	}
}
</script>

<style lang='sass'>

</style>