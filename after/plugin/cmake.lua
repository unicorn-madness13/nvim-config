local cmake = require('cmake')
local path = require('plenary.path')
local wk = require('which-key')

progress = ""

cmake.setup({
	quickfix = {
		only_on_error = true,
	},
	on_build_output = function(lines)
		local match = string.match(lines[#lines], "(%[.*%])")
		if match then
			progress = string.gsub(match, "%%", "%%%%")
		end
	end
})

local build = function()
	local job = cmake.build()
	if job then
		job:after(vim.schedule_wrap(
			function(_, exit_code)
				if exit_code == 0 then
					vim.notify("Target was successfully built", vim.log.levels.INFO, { title = "CMake" })
				else
					vim.notify("Target build failed", vim.log.levels.ERROR, { title = "CMake" })
				end
			end
		))
	end
end

wk.register({
	r = {
		name = "cmake",
		b = { build, "Build" },
	},
}, { prefix = "<leader>" })


