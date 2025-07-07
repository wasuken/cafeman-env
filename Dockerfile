FROM node:22-alpine

WORKDIR /app

# 依存関係のインストール
COPY ./cafeman/package*.json ./
COPY ./cafeman/prisma ./prisma/
RUN npx prisma generate
RUN npm i

# アプリケーションコピー
COPY ./cafeman .

# ポート公開
EXPOSE 3000

# 開発モード用のエントリーポイント
CMD ["npm", "run", "dev"]
