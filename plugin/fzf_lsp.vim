let g:fzf_lsp_timeout = get(g:, 'fzf_lsp_timeout', 5000)

let s:prefix = get(g:, 'fzf_command_prefix', '')

let s:references_command = s:prefix . 'References'
let s:definition_command = s:prefix . 'Definitions'
let s:document_symbol_command = s:prefix . 'DocumentSymbols'
let s:workspace_symbol_command = s:prefix . 'WorkspaceSymbols'
let s:code_action_command = s:prefix . 'CodeActions'
let s:range_code_action_command = s:prefix . 'RangeCodeActions'
let s:diagnostics = s:prefix . 'Diagnostics'

execute 'command! -bang ' . s:definition_command . ' call fzf_lsp#definition(<bang>0)'
execute 'command! -bang ' . s:references_command . ' call fzf_lsp#references(<bang>0)'
execute 'command! -bang ' . s:document_symbol_command . ' call fzf_lsp#document_symbol(<bang>0)'
execute 'command! -bang -nargs=? ' . s:workspace_symbol_command . ' call fzf_lsp#workspace_symbol(<bang>0, <q-args>)'
execute 'command! -bang ' . s:code_action_command . ' call fzf_lsp#code_action(<bang>0)'
execute 'command! -bang -range ' . s:range_code_action_command . ' call fzf_lsp#range_code_action(<bang>0, <range>, <line1>, <line2>)'
execute 'command! -bang -nargs=* ' . s:diagnostics . ' call fzf_lsp#diagnostic(<bang>0, <q-args>)'
