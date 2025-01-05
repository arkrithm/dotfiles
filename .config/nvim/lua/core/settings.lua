-- 基本オプションの設定
local options = {
	number = true, -- 行番号を表示
	tabstop = 4, -- タブ幅を4スペースに設定
	shiftwidth = 4, -- インデント幅を4スペースに設定
	expandtab = true, -- タブをスペースに変換
	ignorecase = true, -- 検索時に大文字小文字を無視
	smartcase = true, -- 大文字が含まれる場合は区別する
	autoindent = true, -- 自動インデントを有効化
	smartindent = true, -- スマートインデントを有効化
	scrolloff = 8, -- カーソル周りのスクロールオフを設定
	syntax = "enable", -- シンタックスハイライトを有効化
	mouse = "a", -- マウスを全モードで有効化
	clipboard = "unnamedplus", -- システムクリップボードと連携
	hidden = true, -- バッファを隠し状態にして複数開く
	swapfile = false, -- スワップファイルを無効化
	backup = false, -- バックアップファイルを無効化
	writebackup = false, -- 書き込みバックアップを無効化
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

-- ファイルタイプに基づくプラグインとインデントを有効化
vim.cmd("filetype plugin indent on")
