.PHONY: setup dev build down clean

setup:
	@echo "🚀 初回セットアップ"
	chmod +x setup.sh docker-entrypoint.sh
	./setup.sh

dev:
	@echo "🔧 開発モード起動"
	docker-compose up

build:
	@echo "🏗️ ビルドして起動"
	docker-compose up --build

down:
	@echo "🛑 コンテナ停止"
	docker-compose down

clean:
	@echo "🧹 データベースも含めて全削除"
	docker-compose down -v
	docker-compose rm -f

logs:
	@echo "📋 ログ表示"
	docker-compose logs -f

db-shell:
	@echo "🗄️ MySQLに接続"
	docker exec -it coffee-meter-mysql mysql -u coffee_user -pcoffee_password coffee_meter
