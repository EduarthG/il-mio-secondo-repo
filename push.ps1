param(
    [Parameter(Mandatory=$true)]
    [string]$Message
)

$git = "C:\Users\Docente\AppData\Local\Programs\Git\bin\git.exe"

Write-Host "Staging changes..." -ForegroundColor Cyan
& $git add .

Write-Host "Committing with message: $Message" -ForegroundColor Cyan
& $git commit -m $Message

Write-Host "Pushing to remote..." -ForegroundColor Cyan
& $git push

if ($LASTEXITCODE -eq 0) {
    Write-Host "Successfully pushed to GitHub!" -ForegroundColor Green
} else {
    Write-Host "An error occurred during the push." -ForegroundColor Red
}
