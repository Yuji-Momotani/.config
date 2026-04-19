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

## 基本ツール
- Alfredのインストール
  - https://www.alfredapp.com/
  - Advanced > Syncing > Set preferences folder からiCloudの`config/alfred`ディレクトリを選択

- Karabiner-Elementsのインストール
  - https://karabiner-elements.pqrs.org/

- Rectangleのインストール
  - https://rectangleapp.com/
  - ショートカット > 次のディスプレイに移動 を `ctrl + cmd + alt + →` に設定(同様に前のディスプレイに移動も設定)

## 開発ツールのインストール
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

- bunのインストール
```
curl -fsSL https://bun.com/install | bash
```
https://bun.com/docs/installation

- zsh-syntax-highlightingのインストール
```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

- zsh-autosuggestionsのインストール
```sh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

- fzfのインストール
```sh
brew install fzf
```

- powerlevel10kのインストール
```sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
```

- ghコマンドインストール + GitHub認証
```sh
brew install gh
gh auth login
```

- ngrokインストール
https://dashboard.ngrok.com/get-started/setup/macos



## Claude Codeの設定
1. Ghostty の設定ファイルに desktop-notifications = true を追加
~/.config/ghostty/config に以下を追加（本リポジトリのconfigファイルをコピーしていたら問題なし）
```
desktop-notifications = true
```

2. macOS の「通知」設定で Ghostty を許可
- システム設定 → 通知 → アプリ一覧から Ghostty → 「通知を許可」を ON

# 要確認
- ホームディレクトリに`.gitconfig`が存在しないこと。
    - `~/.gitconfig`
    - .gitのconfigファイルは、`~/.config/git/config`に配置しているが、ホームディレクトリに`~/.gitconfig`が存在すると、こちらが優先されてしまう。
- oh-my-zshをinstallすると、

# Copilotの設定
normalモードで以下のコマンドを実行
```
:Copilot setup
```
