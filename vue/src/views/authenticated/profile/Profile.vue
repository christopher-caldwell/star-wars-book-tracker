<template lang='pug'>
	v-container
		v-row
			v-col
				h1.sw-yellow All About You
			v-col(cols=3)
				v-btn(
					text
					@click="editable = !editable"
				) {{ editButtonText }}
		v-row
			v-col
				v-text-field(
					:color="swYellow"
					outlined
					label='Given Name'
					v-model="givenName"
				)
		v-row
			v-col
				v-text-field(
					:color="swYellow"
					outlined
					label='Family Name'
					v-model="familyName"
				)
		v-row
			v-col
				v-text-field(
					:color="swYellow"
					outlined
					label='Email'
					v-model="email"
				)
</template>

<script>
import { swYellow } from '@/data/constants'
export default {
	name: 'Profile',
	data(){
		return {
			givenName: '',
			familyName: '',
			email: '',
			editable: false,
			swYellow
		}
	},
	computed: {
		editButtonText(){
			return this.editable
				? 'Save'
				: 'Edit'
		}
	},
	mounted(){
		const { givenName, familyName, email } = this.$store.state.user
		this.givenName = givenName
		this.familyName = familyName
		this.email = email
		
	}
}
</script>

<style>

</style>