param(
    [Parameter(Mandatory=$true)]
    [string]$BranchName
)

$git = "C:\Users\Docente\AppData\Local\Programs\Git\bin\git.exe"

Write-Host "Creazione del branch: $BranchName..." -ForegroundColor Cyan
& $git checkout -b $BranchName

if ($LASTEXITCODE -eq 0) {
    Write-Host "Branch '$BranchName' creato e attivato con successo!" -ForegroundColor Green
} else {
    Write-Host "Errore durante la creazione del branch. Assicurati che il nome sia valido e che non esista già." -ForegroundColor Red
}
