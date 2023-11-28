" material.vim stuff
" let g:material_terminal_italics = 1
" let g:material_theme_style = 'default' | 'palenight' | 'ocean' | 'lighter' |
" 'darker' | 'darkerish' | 'default-community' | 'palenight-community' | 'ocean-community' |
" 'lighter-community' | 'darker-community'
" let g:material_theme_style = 'default'
" colorscheme material

" favs: Archery | abstract | jellybeans | pink-moon | space-camp
" These currently have problems with the cursor diappearing inside of
" delimiters that I need to address later :(

" Custom jellybeans
" Use terminal background:
" https://github.com/nanotech/jellybeans.vim#terminal-background
set termguicolors
" let g:jellybeans_overrides = {
" \  'background': { 'ctermbg': 'none', '256ctermbg': 'none' },
" \}
" if has('termguicolors') && &termguicolors
"   let g:jellybeans_overrides['background']['guibg'] = 'none'
" endif
" colorscheme jellybeans

" colorscheme pink-moon

colorscheme blood-moon
