FROM golang:1.19
# appディレクトリの作成
RUN mkdir /go/src/calender-app
# ワーキングディレクトリの設定
# Run Cmd　などのコマンドを実行するディレクトリ
# https://learn.microsoft.com/ja-jp/virtualization/windowscontainers/manage-docker/manage-windows-dockerfile
WORKDIR /go/src/calender-app
# ホストのファイルをコンテナの作業ディレクトリに移行
# 仮想環境の中にファイルを移動させないといけない。確かに
ADD . /go/src/calender-app