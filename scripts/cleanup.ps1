Write-Host "Cleaning project..."

# Remove node_modules
Remove-Item -Recurse -Force ../backend/node_modules -ErrorAction SilentlyContinue

# Clear logs
Clear-Content ../logs/deploy.log -ErrorAction SilentlyContinue

Write-Host "Cleanup done!"