<template lang='pug'>
	v-container
		v-row
			v-col(align='center')
				h1.sw-yellow Register
		v-row.oauth-row
			GoogleOauth(@toggleLoading="isLoading = !isLoading" :isLogin="false")
			v-col(cols='4' align='center')
				v-img.pointer-image(
					:src="require(`@/assets/images/amazon-${isDarkMode}.png`)"
					height='50px'
					contain
					alt='amazon sign in'
				)
			v-col(cols='4' align='center')
				v-img.pointer-image(
					:src="require(`@/assets/images/github-${isDarkMode}.png`)"
					height='50px'
					contain
					alt='github sign in'
				)
		v-row.line-row(justify='center')
			v-col(cols='10')
				LineThroughText(text='or')
		v-row
			v-col(align='center')
				router-link(to='/register/standard')
					v-btn(:color="swYellow" :loading="isLoading") Sign Up
		
</template>

<script>
import { swYellow, supportedLocales } from '@/data/constants'
import LineThroughText from '@/components/util/LineThroughText.vue'
import GoogleOauth from '@/components/oauth/Google.vue'
export default {
	name: 'Register',
	components: {
		LineThroughText,
		GoogleOauth
	},
	data(){
		return {
			swYellow,
			supportedLocales,
			chosenLocale: 'English',
			isLoading: false
		}
	},
	computed: {
		isDarkMode(){
			return this.$vuetify.theme.isDark
				? 'dark'
				: 'light'
		},
	}
}
</script>

<style lang='sass' scoped>
@import '@/styles/variables'
a
	color: $sw-yellow
.oauth-row
	margin-top: 15%
.line-row
	margin: 4% 0
</style>