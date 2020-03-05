<template lang='pug'>
	div(@click="emitClick").link-container.flex-centered
		h3(v-if="!isLoading") {{ buttonText }}
		v-progress-circular(v-else indeterminate :color="swYellow")
</template>

<script>
import { swYellow } from '@/data/constants'
export default {
	name: 'BoxButton',
	props: {
		isLoading: {
			type: Boolean,
			required: false,
			default: false
		},
		buttonText: {
			type: String,
			required: true
		}
	},
	data(){
		return {
			swYellow
		}
	},
	methods: {
		emitClick(){
			this.$emit('buttonClicked')
		}
	}
}
</script>

<style lang='sass'>
@import '@/styles/variables'
.link-container
	width: 100%
	padding: 10px
	border: 3px $sw-yellow solid
	color: $sw-yellow
	border-radius: 5%
	cursor: pointer
	&:active
		transform: scale(0.96)
</style>