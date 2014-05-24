" Vim completion plugin
" Language:	PHP
" Maintainer:	Szabó Dávid ( complex857 AT gmail DOT com )
"
"	OPTIONS:
"		let g:phpcomplete_enhance_jump_to_definition = 1/0  [default 1]
"			When enabled the <C-]> will be mapped to phpcomplete#JumpToDefinition()
"			which will try to make a more educated guess of the current
"			symbol's location than simple tag search. If the symbol's location
"			cannot be found the original <C-]> functionality will be invoked

let s:save_cpo = &cpo
set cpo&vim

let g:phpcomplete_enhance_jump_to_definition = get(g:, 'phpcomplete_enhance_jump_to_definition', 1)

if g:phpcomplete_enhance_jump_to_definition
	if !hasmapto('<Plug>PHPJump')
		map <silent> <buffer> <unique> <C-]> <Plug>PHPJump
	endif
	nnoremap <silent> <buffer> <Plug>PHPJump :<C-u>call phpcomplete#JumpToDefinition()<CR>
endif

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: foldmethod=marker:noexpandtab:ts=4:sts=4
