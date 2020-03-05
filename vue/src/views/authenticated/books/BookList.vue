<template lang='pug'>
	v-container
		v-row
			v-col(align='center')
				h1.sw-yellow Books		
		v-row(justify='center')
			v-col(cols='10' align='center')
				//- Filter here
		v-row(justify='center')
			v-col(cols='10' align='center')
    
		
</template>

<script>
import { swYellow } from '@/data/constants'
import LineThroughText from '@/components/util/LineThroughText.vue'
import GoogleOauth from '@/components/oauth/Google.vue'
export default {
	name: 'Login',
	components: {
		LineThroughText,
		GoogleOauth
	},
	data(){
		return {
			swYellow,
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
	margin-top: 1%
.line-row
	margin: 4% 0
</style>