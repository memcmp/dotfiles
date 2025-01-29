return {
  --{
  --  "lifepillar/vim-solarized8",
  --  branch="neovim",
  --  config = function()
  --    vim.cmd("colorscheme solarized8_flat")
  --  end,
  --},
  --{
  --    "shaunsingh/solarized.nvim",
  --    config = function()
  --        require("solarized").set();
  --    end,
  --},
  --
  --{
  --  "Tsuzat/NeoSolarized.nvim",
  --  lazy=false,
  --  priority=1000,
  --},
  {"ishan9299/nvim-solarized-lua",
    config = function()
        vim.cmd('colorscheme solarized')
        vim.cmd('highlight clear LineNr')
    end

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
  --{ "leafgarland/typescript-vim" },
  --{ "ianks/vim-tsx" },
  --{ "othree/yajs.vim" },
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
  {
    "frankroeder/parrot.nvim",
    dependencies = { 'ibhagwan/fzf-lua', 'nvim-lua/plenary.nvim' },
    -- optionally include "rcarriga/nvim-notify" for beautiful notifications
    config = function()
      require("parrot").setup {
        -- Providers must be explicitly added to make them available.
        providers = {
          anthropic = {
            api_key = os.getenv "ANTHROPIC_API_KEY",
            topic = {
                model = "claude-3-haiku-20240307",
                params = { max_tokens = 32}
            }
          },
          --gemini = {
          --  api_key = os.getenv "GEMINI_API_KEY",
          --},
          --groq = {
          --  api_key = os.getenv "GROQ_API_KEY",
          --},
          --mistral = {
          --  api_key = os.getenv "MISTRAL_API_KEY",
          --},
          --pplx = {
          --  api_key = os.getenv "PERPLEXITY_API_KEY",
          --},
          ---- provide an empty list to make provider available (no API key required)
          --ollama = {},
          --openai = {
          --  api_key = os.getenv "OPENAI_API_KEY",
          --},
          github = {
            api_key = os.getenv "GITHUB_API_KEY",
          },
          --nvidia = {
          --  api_key = os.getenv "NVIDIA_API_KEY",
          --},
          --xai = {
          --  api_key = os.getenv "XAI_API_KEY",
          --},
        },
        cmd_prefix = "P",
        -- Local chat buffer shortcuts
        chat_shortcut_respond = { modes = { "n", "i", "v", "x" }, shortcut = "<leader>cc" },
        chat_shortcut_delete = { modes = { "n", "i", "v", "x" }, shortcut = "<leader>cd" },
        chat_shortcut_stop = { modes = { "n", "i", "v", "x" }, shortcut = "<leader>cs" },
        chat_shortcut_new = { modes = { "n", "i", "v", "x" }, shortcut = "<leader>cn" },
      }
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "dart", "vim", "vimdoc", "query", "elixir", "python", "javascript", "typescript", "html", "tsx" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = false },  
          textobjects = { enable = true },
        })
    end
 },
  
}
