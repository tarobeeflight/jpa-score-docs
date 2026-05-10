-- 1. スキーマ（データベース）の作成
CREATE DATABASE IF NOT EXISTS jpa_scorer_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- 2. 作成したスキーマを選択
USE jpa_scorer_db;

-- 3. テスト用のテーブル作成（チームメンバー情報の最小構成）
CREATE TABLE IF NOT EXISTS test_members (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    skill_level INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 4. テストデータの投入
INSERT INTO test_members (name, skill_level) VALUES ('Taro', 4);
INSERT INTO test_members (name, skill_level) VALUES ('Jiro', 5);

-- 5. 確認
SELECT * FROM test_members;
