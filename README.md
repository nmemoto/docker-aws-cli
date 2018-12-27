# Docker AWS CLI
DockerコンテナでAWS CLIを利用する

## ビルド
```
$ git clone https://github.com/nmemoto/docker-aws-cli.git .
$ docker build -t nmemoto/aws-cli ./docker-aws-cli
```

## 使い方
1. aws にエイリアスを設定する

    以下は クレデンシャルファイルが ${HOME}/.aws/ にある場合の設定例
    ```
    $ alias aws='docker run --rm -t $(tty &>/dev/null && echo "-i") -v "$(pwd):/project" -v "${HOME}/.aws:/root/.aws" nmemoto/aws-cli'
    ```
2. 通常と同じように AWS CLI を使用する
    ```
    $ aws cloudformation describe-stacks 
    ```

## 注意点
- ファイル指定する場合は実行ディレクトリ配下の相対パスで指定する必要がある
