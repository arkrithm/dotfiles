-- 行番号を表示
vim.opt.number = true

-- インデント関連
vim.opt.expandtab = true     -- タブをスペースに変換
vim.opt.shiftwidth = 4       -- 自動インデント時のスペース数
vim.opt.tabstop = 4          -- タブを押したときに表示されるスペース数
vim.opt.smartindent = true   -- スマートインデントを有効化

-- 検索関連
vim.opt.ignorecase = true    -- 検索時に大文字小文字を無視
vim.opt.smartcase = true     -- 大文字が含まれているときは大文字小文字を区別
vim.opt.incsearch = true     -- インクリメンタルサーチ
vim.opt.hlsearch = true     -- 検索結果のハイライトを有効化

-- UI関連
vim.opt.termguicolors = true -- True color対応
vim.opt.signcolumn = "yes"   -- 常にサインカラム（左端の余白）を表示
vim.opt.wrap = false         -- 行の折り返しを無効化
vim.opt.scrolloff = 8        -- カーソル移動時、上下に8行分余裕を持って表示

-- マウス操作
vim.opt.mouse = "a"          -- 全てのモードでマウス有効化

-- クリップボード共有
vim.opt.clipboard = "unnamedplus" -- システムクリップボードと共有

-- ウィンドウ分割時の挙動
vim.opt.splitbelow = true    -- 下に新しいウィンドウを開く
vim.opt.splitright = true    -- 右に新しいウィンドウを開く

-- コマンドライン補完のサジェスト
vim.opt.wildmode = "longest:full,full"

-- バックアップ関連(必要なら)
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

-- タイムアウト関連
vim.opt.timeoutlen = 500     -- キーマップ待ち時間（ミリ秒）

-- 折りたたみ (必要に応じて)
vim.opt.foldmethod = "marker"
vim.opt.foldlevel = 99
