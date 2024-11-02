# ベースイメージとして Node.js の公式イメージを指定
FROM node:18

# 作業ディレクトリを作成
WORKDIR /usr/src/app

# package.jsonとpackage-lock.jsonをコピー
COPY package*.json ./

# 依存関係をインストール
RUN npm install

# アプリケーションのソースコードをコピー
COPY . .

# サーバーを外部からアクセスできるようにするポートを指定
EXPOSE 3000

# サーバーを起動する
CMD ["node", "server.js"]
