local alpha = function()
	return string.format("%x", math.floor(255 * 0.8))
end

vim.g.neovide_transparency = 0.95
vim.g.transparency = 0.95
vim.g.neovide_background_color = "#0f1117" .. alpha()

