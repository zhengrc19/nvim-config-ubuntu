vim.api.nvim_set_var("tex_flavor", "latex")
vim.api.nvim_set_var("vimtex_quickfix_mode", 0)
vim.api.nvim_set_var("vimtex_view_method", "zathura")
-- vim.api.nvim_set_var("vimtex_compiler_latexmk_engines", {"_" = "-xelatex"})
vim.cmd [[let g:vimtex_compiler_latexmk_engines = {
    \ '_' : '-xelatex',
    \}]]
-- vim.cmd [[let g:vimtex_compiler_latexmk = {
--     \ "build_dir" : "",
--     \ "callback" : 1,
--     \ "continuous" : 1,
--     \ "executable" : "latexmk",
--     \ "hooks" : [],
--     \ "options" : [
--     \   "-xelatex",
--     \   "-shell-escape",
--     \   "-file-line-error",
--     \   "-synctex=1",
--     \   "-interaction=nonstopmode",
--     \ ],
--     \}
-- ]]
-- let g:vimtex_compiler_latexmk_engines = {
--     \ '_'                : '-xelatex',
--     \}
-- let g:tex_flavor="latex"
-- let g:vimtex_quickfix_mode=0
