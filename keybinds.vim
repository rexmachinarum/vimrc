"Tab Keybinds
let mapleader=','
nnoremap J :tabprev<return>
nnoremap K :tabnext<return>
nnoremap <C-j> :-tabmove<return>
nnoremap <C-k> :+tabmove<return>

"Search Keybinds
nnoremap <C-c> :noh<return>

"Window Keybinds
nnoremap <leader>q :q!<return>

"Custom Function Keybinds
nnoremap <leader>t  :MultiTab 
nnoremap <leader>e  :FuzzyOpen 
nnoremap <leader>T  :$tabnew 
nnoremap <leader>E  :e 
nnoremap <leader>c  :cd 
nnoremap <leader>an :AnchorName 
nnoremap <leader>ad :AnchorDrop 
nnoremap <leader>as :AnchorSwap 
nnoremap <leader>ar :AnchorRemove 
nnoremap <leader>al :AnchorList<return>
