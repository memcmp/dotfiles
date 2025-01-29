return {
  {
    "lifepillar/vim-solarized8",
    config = function()
      vim.cmd("colorscheme solarized8_flat")
    end,
  },
  { "JazzCore/vim-python-syntax" },
  {
    "vim-airline/vim-airline",
    dependencies = { "vim-airline/vim-airline-themes" },
  },
  { "tpope/vim-fugitive" },
  {
    "junegunn/fzf.vim",
    dependencies = {
      {
        "junegunn/fzf",
        build = function()
          vim.fn["fzf#install"]()
        end,
      },
    },
    config = function()
      vim.g.fzf_layout = { down = "20" }
    end,
  },
  { "leafgarland/typescript-vim" },
  { "ianks/vim-tsx" },
  { "othree/yajs.vim" },
  {
    "dense-analysis/ale",
    config = function()
      vim.g.airline_extensions_ale_enabled = 1
      vim.g.ale_open_list = "on_save"
      vim.g.ale_list_window_size = 5
      vim.g.ale_set_highlights = 0
      vim.g.ale_fix_on_save = 1
      vim.g.ale_fixers = {
        javascript = { "eslint", "prettier" },
        typescript = { "eslint", "prettier" },
        dart = { "dart-format" },
        css = { "prettier" },
      }
      vim.g.ale_linters = {
        typescript = { "eslint", "tsserver" },
        dart = { "analysis_server", "dart_analyze", "language_server" },
        tex = {},
        cpp = {},
      }
      vim.g.ale_lint_delay = 200
      vim.g.ale_lint_on_text_changed = 0
      vim.g.ale_lint_on_enter = 0
      vim.g.ale_lint_on_insert_leave = 0
      vim.g.ale_completion_autoimport = 1
    end,
  },
  {
    "Shougo/deoplete.nvim",
    build = ":UpdateRemotePlugins",
    config = function()
      vim.fn["deoplete#custom#option"]("ignore_sources", {
        typescript = { "around", "buffer" },
        javascript = { "buffer", "around" },
        markdown = { "around", "buffer" },
      })
      vim.fn["deoplete#custom#option"]("sources", {
        typescript = { "ale" },
      })
    end,
  },
  { "plasticboy/vim-markdown" },
  { "github/copilot.vim" },
}
