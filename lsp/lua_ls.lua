-- Lua Language Server Configuration
-- See: https://luals.github.io/wiki/settings/
--
-- This file is automatically loaded by Neovim 0.11+ when vim.lsp.enable('lua_ls') is called.
-- The returned table contains the server configuration.

return {
  settings = {
    Lua = {
      completion = {
        callSnippet = 'Replace',
      },
      -- Uncomment to disable noisy 'missing-fields' warnings
      -- diagnostics = {
      --   disable = { 'missing-fields' },
      -- },
    },
  },
}
