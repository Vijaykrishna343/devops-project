Write-Host "===== SETUP START ====="

# Check Node.js
node -v > $null 2>&1

if ($LASTEXITCODE -ne 0) {
    Write-Host "Node not found. Installing..."
    winget install OpenJS.NodeJS.LTS
} else {
    Write-Host "Node already installed ✅"
}

# Check PM2
pm2 -v > $null 2>&1

if ($LASTEXITCODE -ne 0) {
    Write-Host "Installing PM2..."
    npm install -g pm2
} else {
    Write-Host "PM2 already installed ✅"
}

Write-Host "===== SETUP COMPLETE ====="