-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'mrcjkb/rustaceanvim',
    version = '^4',
    ft = { 'rust' },
    lazy = false,
    dependencies = {
      -- 'nvim-telescope/telescope.nvim', -- optional
    },
    opts = {
      -- Plugin configuration
      -- tools = {
      --   executor = exec
      -- },
      -- LSP configuration
      server = {
        on_attach = function(client, bufnr)
          -- optional, I think you need to be on nvim nightly still for this
          vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
          if vim.g.lsp_on_attach ~= nil then
            vim.g.lsp_on_attach(client, bufnr)
          end
        end,
        cmd = { '/home/discord/ra-multiplex.sh' },
        settings = {
          ['rust-analyzer'] = { -- add r-a settings here
          },
        },
      },
      -- DAP configuration
      dap = {},
    },
  },
}
