# 初期設定

## まずこのリポジトリのclone（新規PCの場合）
```sh
cd ~/
git clone https://github.com/Yuji-Momotani/.config.git 
```
新規PCでない場合は、必要なconfigファイルをコピペでOK

## zshrcのパス変更(~/.config配下にセット)
- .zshenvの設定
```sh
echo 'export ZDOTDIR=$HOME/.config/zsh' >> ~/.zshenv

# 動作確認
# 新しいターミナルを開き以下の通りの結果であればOK
echo $ZDOTDIR
# → /Users/yourname/.config/zsh

echo $0
# → -zsh（正常にzshが起動している）
```
これにより、~/.zshrc → ~/.config/zsh/.zshrc に場所が変わるため、intall手順でパスを通す場合などに注意すること。（例：`echo 'export HOGEENV=$HOME/.hoge >> ~/.zshrc'` みたいなやつはパスに注意）

## 必要ツールのインストール
- brewのインストール
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

- gitのインストール(たぶんMacならデフォルトで入ってる）
```sh
brew install git
```

- treeのインストール
```sh
brew install tree
```

- nodeのインストール
```sh
brew install node
```

- gosstyのインストール(cmuxを使うなら不要かも？)
1. [ghostty](https://ghostty.org/download)のインストール
2. デフォルトのconfigファイルを削除
```sh
rm ~/Library/Application\ Support/com.mitchellh.ghostty/config
```

- cmuxのインストール
```
brew tap manaflow-ai/cmux
brew install --cask cmux

# シンボリックリンクを貼る
sudo ln -sf "/Applications/cmux.app/Contents/Resources/bin/cmux" /usr/local/bin/cmux
```
https://cmux.com/ja/docs/getting-started

- neovimのインストール
```sh
brew install neovim
```

- ripgrepのインストール
```sh
brew install ripgrep
```

- lua-language-serverのインストール
```sh
brew install lua-language-server
```
- HTML, CSSのLanguageServerをインストール
```sh
npm i -g @olrtg/emmet-language-server
```

- typescript-language-serverのインストール
```sh
npm install -g typescript-language-server typescript-language-server
```

- pythonのインストール
```sh
brew install pyenv

# おそらくこれで最新のバージョンがinsatllされる
pyenv install 3

pyenv global 3.14.3

# 3.14.3が表示されてばOK
python3 --version
```

- goのインストール
```sh
brew install go
brew install gopls
# formatterでgofmtを使用しているが、これは個別インストール不要(goのinstallで含まれる)
```

- autojunmのインストール
```sh
brew install autojump
```

- lazygitのインストール
```sh
brew install lazygit
```

- oh my zshのインストール
https://ohmyz.sh/#install

- vim plugのインストール
https://github.com/junegunn/vim-plug

- bunのインストール
```
curl -fsSL https://bun.com/install | bash
```
https://bun.com/docs/installation

## Claude Codeの設定
1. Ghostty の設定ファイルに desktop-notifications = true を追加
~/.config/ghostty/config に以下を追加（本リポジトリのconfigファイルをコピーしていたら問題なし）
```
desktop-notifications = true
```

2. macOS の「通知」設定で Ghostty を許可
- システム設定 → 通知 → アプリ一覧から Ghostty → 「通知を許可」を ON

## 同期用の設定ファイルの配置
alfredは同期機能があるため、iCloudに設定ファイルを配置
- Advanced > Syncing > Set preferences folder からiCloudの「config」ディレクトリを選択

## NeoVim - vim-gitgutter
vim-gitgutterのインストール
```
mkdir -p ~/.config/nvim/pack/airblade/start
cd ~/.config/nvim/pack/airblade/start
git clone https://github.com/airblade/vim-gitgutter.git
nvim -u NONE -c "helptags vim-gitgutter/doc" -c 
```
[vim-gitgutter](https://github.com/airblade/vim-gitgutter)

# 要確認
- ホームディレクトリに`.gitconfig`が存在しないこと。
    - `~/.gitconfig`
    - .gitのconfigファイルは、`~/.config/git/config`に配置しているが、ホームディレクトリに`~/.gitconfig`が存在すると、こちらが優先されてしまう。

# Copilotの設定
normalモードで以下のコマンドを実行
```
:Copilot setup
```
