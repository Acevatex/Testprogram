@echo off
set "WEBHOOK_URL=https://discord.com/api/webhooks/1543428498956361788/k8Vvn4dJr6ABJagHkda3ICXJctRUuG0V_X9wWENSOODf5n_AI7sp9u_AOgxlsnZdgGHE"

powershell -NoProfile -Command "$body = @{content='Hello from a batch file!'} | ConvertTo-Json; Invoke-RestMethod -Uri '%WEBHOOK_URL%' -Method Post -ContentType 'application/json' -Body $body"
