require("lint").linters_by_ft = {
  bash = { "shellcheck" },
  gitcommit = { "gitlint", "commitlint" },
  go = { "golangci-lint" },
  javascript = { "eslint_d" },
  javascriptreact = { "eslint_d" },
  markdown = { "markdownlint-cli2", "markdown-toc", "cspell" },
  sh = { "shellcheck" },
  typescript = { "eslint_d" },
  typescriptreact = { "eslint_d" },
  zsh = { "shellcheck" },
}

vim.api.nvim_create_autocmd({ "InsertLeave" }, {
  callback = function()
    -- try_lint without arguments runs the linters defined in `linters_by_ft`
    -- for the current filetype
    require("lint").try_lint()

    -- You can call `try_lint` with a linter name or a list of names to always
    -- run specific linters, independent of the `linters_by_ft` configuration
    -- require("lint").try_lint "cspell"
  end,
})
