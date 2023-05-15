
local status_ok, tresitter = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end


treesitter.setup {
	ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "go", "typescript", "proto" },
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
