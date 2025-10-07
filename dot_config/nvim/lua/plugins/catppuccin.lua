return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  auto_integrations = true,
  config = function()
            require("catppuccin").setup({
            flavour = "mocha", 
            
            -- This is where you override the color of the current line number
            custom_highlights = function(colors)
                return {
                    -- CursorLineNr controls the current line's line number (the absolute number)
                    CursorLineNr = {
                        fg = colors.mauve, 
                        bg = "NONE",
                        bold = true, 
                    },

                    -- Optional: Make the relative line numbers (LineNr) more subtle
                    LineNr = {
                         fg = colors.surface1, -- Use a slightly darker Catppuccin color
                    },
                }
            end,
        })
    vim.cmd.colorscheme "catppuccin"
  end
}
