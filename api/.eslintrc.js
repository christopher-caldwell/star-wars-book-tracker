module.exports = {
	env: {
    node: true,
    es6: true
	},
	extends: ['eslint:recommended'],
	rules: {
		'no-console': 'off',
		'no-unused-vars': 'warn'
  },
	parserOptions: {
    ecmaVersion: 10
	}
}
