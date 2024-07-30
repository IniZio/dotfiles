return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      jsonls = {
        settings = {
          json = {
            format = {
              enable = false,
            },
            validate = { enable = false }
          },
          jsonc = {
            format = {
              enable = false,
            },
            validate = { enable = false }
          },
        },
      },
      gopls = {
        settings = {
          gopls = {
            gofumpt = false,
            codelenses = {
              tidy = false,
            },
          }
        }
      }
    },
  },
}
