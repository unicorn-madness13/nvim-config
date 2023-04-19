require("mason").setup {
	log_level = vim.log.levels.DEBUG,
	providers = {
		"mason.providers.client",
		"mason.providers.registry-api"
	}
}
