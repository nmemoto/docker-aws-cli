# Docker AWS CLI
![Alt text](https://img.shields.io/badge/version-1.16.82-brightgreen.svg)
[![CircleCI](https://circleci.com/gh/nmemoto/docker-aws-cli/tree/master.svg?style=svg)](https://circleci.com/gh/nmemoto/docker-aws-cli/tree/master)

Dockerコンテナで最新のAWS CLIを利用する
https://hub.docker.com/r/nmemoto/aws-cli

## 使い方
1. docker pullする
    ```
    $ docker pull nmemoto/aws-cli
    ```
1. aws にエイリアスを設定する
    
    - Mac, Linuxの設定例
        ```
        $ alias aws='docker run --rm -t $(tty &>/dev/null && echo "-i") -v "$(pwd):/project" -v "${HOME}/.aws:/root/.aws" nmemoto/aws-cli'
        ```

    - Windows(Mingw) の設定例
        ```
        $ alias aws='docker run --rm -t $(tty &>/dev/null && echo "-i") -v /$PWD:/project -v //c/users/nmemoto/.aws:/root/.aws nmemoto/aws-cli'
        ```

1. 通常と同じように AWS CLI を使用する
    ```
    $ aws --version
    aws-cli/1.16.82 Python/3.6.6 Linux/4.9.125-linuxkit botocore/1.12.72
    ```

## 注意点
- AWS CLIでファイルを指定する場合は実行ディレクトリ配下の相対パスで指定する必要がある
