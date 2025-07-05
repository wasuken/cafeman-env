# mysql-init/01-permissions.sql
-- coffee_userにデータベース作成権限を付与
GRANT ALL PRIVILEGES ON *.* TO 'coffee_user'@'%';
GRANT CREATE ON *.* TO 'coffee_user'@'%';
GRANT DROP ON *.* TO 'coffee_user'@'%';
FLUSH PRIVILEGES;

-- 既存のcafemanデータベースがない場合は作成
CREATE DATABASE IF NOT EXISTS cafeman CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
