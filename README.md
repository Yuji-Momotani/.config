# 初期設定
- brewのインストール
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

- gitのインストール
```sh
brew install git
```

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

- gosstyのインストール
1. (ghostty)[https://ghostty.org/download]のインストール
2. デフォルトのconfigファイルを削除
```sh
rm ~/Library/Application\ Support/com.mitchellh.ghostty/config
```

# リポジトリのclone
```sh
cd ~/
git clone https://github.com/Yuji-Momotani/.config.git 
```
