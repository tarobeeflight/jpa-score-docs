# 本ファイルをプロジェクトのdocs/scriptsディレクトリに配置し、
# package.jsonで"以下のdeployスクリプトを追加することで、npm run deployで本スクリプトを実行できるようになる
# "deploy": "powershell -ExecutionPolicy Bypass -File ../../jpa-scorer-docs/scripts/static_hosting.ps1"

# --- 設定項目 ---
$PROJECT_NAME = "jpa-scorer"
$SERVER_USER  = "tarobee"
$SERVER_HOST  = "tarobeeserver"
$REMOTE_PATH  = "/var/www/$PROJECT_NAME/"

# Angularビルド
Write-Host "--- 1. Angular Build ---" -ForegroundColor Cyan
ng build --base-href /


# dist内のファイルをサーバーへ転送
# browserディレクトリが2層の場合はangular.jsonのoutputPathを修正
Write-Host "--- 2. Transfer Files (SCP) ---" -ForegroundColor Cyan
scp -r ./dist/$PROJECT_NAME/browser/* "${SERVER_USER}@${SERVER_HOST}:${REMOTE_PATH}"

# 完了通知
Write-Host "--- Deployment Finished! ---" -ForegroundColor Green
Write-Host "--- Please restart Nginx : sudo systemctl restart nginx ---" -ForegroundColor Green