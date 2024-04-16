module github.com/hugo-porto/web

go 1.22.2

require github.com/hugo-porto/theme v0.0.1 // indirect

// Direct link to the theme module in the local file system to deveopment purposes only
// Should be removed or commented before deploying to production
replace github.com/hugo-porto/theme => ../theme
