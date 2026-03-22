Write-Host "===== DEPLOYMENT START ====="

$logFile = "../logs/deploy.log"

function Log {
    param($msg)
    $time = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    "$time - $msg" | Tee-Object -FilePath $logFile -Append
}

Log "Deployment started"

# Go to backend
cd ../backend

# Install dependencies
Log "Installing dependencies"
npm install

# Stop old process
Log "Stopping old app"
pm2 stop backend 2>$null

# Start app
Log "Starting backend"
pm2 start app.js --name backend

pm2 save

Log "Deployment finished"

Write-Host "===== DEPLOYMENT COMPLETE ====="