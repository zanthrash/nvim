-- shout out config
nnoremap('<leader><CR>', '<cmd>lua reload()<CR>')
nnoremap('<C-j>',':cnext<CR>zz')
nnoremap('<C-k>',':cprev<CR>zz')

nnoremap('<leader>y', '"+y')
vnoremap('<leader>y', '"+y')
nnoremap('<leader>Y', 'gg"+yG')

nnoremap('<leader>d', '"_d')
vnoremap('<leader>d', '"_d')

vnoremap('J', ":m '>+1<CR>gv=gv")
vnoremap('K', ":m '<-2<CR>gv=gv")

-- vnoremap('<leader>p', '"_dP')

 
