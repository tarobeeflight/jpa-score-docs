# 本ファイルをプロジェクトのdocs/scriptsディレクトリに配置し、
# package.jsonで"以下のdeployスクリプトを追加することで、npm run deployで本スクリプトを実行できるようになる
# "deploy": "powershell -ExecutionPolicy Bypass -File ../jpa-scorer-docs/scripts/node_deploy.ps1"

# --- 設定項目 ---
$PROJECT_NAME = "jpa-scorer"
$SERVER_USER  = "tarobee"
$SERVER_HOST  = "tarobeeserver"
$REMOTE_PATH  = "/home/tarobee/my-projects/$PROJECT_NAME/node-app"

# Angularビルド
Write-Host "--- 1. Node Build ---" -ForegroundColor Cyan
npm run build


# dist内のファイル、package*.jsonをサーバーへ転送
Write-Host "--- 2. Transfer Files (SCP) ---" -ForegroundColor Cyan
scp -r ./dist ./package.json ./package-lock.json "${SERVER_USER}@${SERVER_HOST}:${REMOTE_PATH}"

# 完了通知
Write-Host "--- Deployment Finished! ---" -ForegroundColor Green
Write-Host "--- Please restart Docker at node-app directory ---" -ForegroundColor Green
Write-Host "--- sudo docker compose down ---" -ForegroundColor Green
Write-Host "--- sudo docker compose up -d --build ---" -ForegroundColor Green