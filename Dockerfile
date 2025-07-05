FROM node:22-alpine

WORKDIR /app

# 依存関係のインストール
COPY ./cafeman/package*.json ./
RUN npm i

# Prismaクライアント生成
# COPY prisma ./prisma/
# RUN npx prisma generate

# アプリケーションコピー
COPY ./cafeman .

# ポート公開
EXPOSE 3000

# 開発モード用のエントリーポイント
CMD ["npm", "run", "dev"]
