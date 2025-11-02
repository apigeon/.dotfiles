return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	lazy = false,
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		harpoon:setup()

		local set = vim.keymap.set

		set("n", "<leader>a", function()
			harpoon:list():add() -- add file to harpoon
		end)
		set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list()) -- toggle menu
		end)

		-- Switch to harpooned file 1-4
		set("n", "<leader>h", function()
			harpoon:list():select(1)
		end)
		set("n", "<leader>j", function()
			harpoon:list():select(2)
		end)
		set("n", "<leader>k", function()
			harpoon:list():select(3)
		end)
		set("n", "<leader>l", function()
			harpoon:list():select(4)
		end)

		-- susbstitute harpoon file 1-4 with new files
		set("n", "<leader><C-h>", function()
			harpoon:list():replace_at(1)
		end)
		set("n", "<leader><C-j>", function()
			harpoon:list():replace_at(2)
		end)
		set("n", "<leader><C-k>", function()
			harpoon:list():replace_at(3)
		end)
		set("n", "<leader><C-l>", function()
			harpoon:list():replace_at(4)
		end)

		-- Toggle previous & next buffers stored within Harpoon list
		-- set("n", "<C-S-P>", function() harpoon:list():prev() end)
		-- set("n", "<C-S-N>", function() harpoon:list():next() end)
	end,
}
