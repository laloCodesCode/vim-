return {
  -- Molten for Jupyter notebook integration
  {
    "benlubas/molten-nvim",
    version = "^1.0.0",
    dependencies = { "3rd/image.nvim" },
    build = ":UpdateRemotePlugins",
    init = function()
      -- These are examples, all configuration is optional and has sane defaults
      vim.g.molten_output_win_max_height = 20
      vim.g.molten_auto_open_output = false
      vim.g.molten_wrap_output = true
      vim.g.molten_virt_text_output = true
      vim.g.molten_virt_lines_off_by_1 = true
    end,
    config = function()
      -- Molten keybindings
      vim.keymap.set("n", "<localleader>mi", ":MoltenInit<CR>", { desc = "Initialize Molten" })
      vim.keymap.set("n", "<localleader>me", ":MoltenEvaluateOperator<CR>", { desc = "Molten evaluate operator" })
      vim.keymap.set("n", "<localleader>ml", ":MoltenEvaluateLine<CR>", { desc = "Molten evaluate line" })
      vim.keymap.set("n", "<localleader>mr", ":MoltenReevaluateCell<CR>", { desc = "Molten re-evaluate cell" })
      vim.keymap.set("v", "<localleader>r", ":<C-u>MoltenEvaluateVisual<CR>gv", { desc = "Molten evaluate visual" })
      vim.keymap.set("n", "<localleader>mh", ":MoltenHideOutput<CR>", { desc = "Molten hide output" })
      vim.keymap.set("n", "<localleader>md", ":MoltenDelete<CR>", { desc = "Molten delete cell" })
    end,
  },

  -- Jupytext for .py <-> .ipynb conversion
  {
    "GCBallesteros/jupytext.nvim",
    config = true,
    -- Uncomment to enable by default
    -- lazy = false,
  },

  -- Image rendering support (optional, for inline images)
  {
    "3rd/image.nvim",
    opts = {
      backend = "kitty", -- or "ueberzug"
      integrations = {
        markdown = {
          enabled = true,
          clear_in_insert_mode = false,
          download_remote_images = true,
          only_render_image_at_cursor = false,
          filetypes = { "markdown", "vimwiki" },
        },
      },
      max_width = 100,
      max_height = 12,
      max_width_window_percentage = nil,
      max_height_window_percentage = 50,
      window_overlap_clear_enabled = false,
      window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
    },
  },

  -- Iron for REPL integration (alternative approach)
  {
    "Vigemus/iron.nvim",
    config = function()
      local iron = require("iron.core")
      iron.setup({
        config = {
          -- Whether a repl should be discarded or not
          scratch_repl = true,
          -- Your repl definitions come here
          repl_definition = {
            sh = {
              -- Can be a table or a function that
              -- returns a table (see below)
              command = { "zsh" },
            },
            python = {
              command = { "python3" }, -- or { "ipython", "--no-autoindent" }
              format = require("iron.fts.common").bracketed_paste,
            },
          },
          -- How the repl window will be displayed
          -- See below for more information
          repl_open_cmd = require("iron.view").bottom(40),
        },
        -- Iron doesn't set keymaps by default anymore.
        -- You can set them here or manually add keymaps to the map below
        keymaps = {
          send_motion = "<space>sc",
          visual_send = "<space>sc",
          send_file = "<space>sf",
          send_line = "<space>sl",
          send_paragraph = "<space>sp",
          send_until_cursor = "<space>su",
          send_mark = "<space>sm",
          mark_motion = "<space>mc",
          mark_visual = "<space>mc",
          remove_mark = "<space>md",
          cr = "<space>s<cr>",
          interrupt = "<space>s<space>",
          exit = "<space>sq",
          clear = "<space>cl",
        },
        -- If the highlight is on, you can change how it looks
        -- For the available options, check nvim_set_hl
        highlight = {
          italic = true,
        },
        ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
      })

      -- iron also has a list of commands, see :h iron-commands for all available commands
      vim.keymap.set("n", "<space>rs", "<cmd>IronRepl<cr>")
      vim.keymap.set("n", "<space>rr", "<cmd>IronRestart<cr>")
      vim.keymap.set("n", "<space>rf", "<cmd>IronFocus<cr>")
      vim.keymap.set("n", "<space>rh", "<cmd>IronHide<cr>")
    end,
  },
}