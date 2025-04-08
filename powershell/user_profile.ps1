# No highlighting for ls
$PSStyle.FileInfo.Directory = ""

# Git
Set-Alias g git

# Zoxide (better cd)
Remove-Item Alias:cd -ErrorAction SilentlyContinue
Set-Alias cd z
Invoke-Expression (& { (zoxide init powershell | Out-String) })
$env:_ZOXIDE_MAX_AGE = "0"

# Eza (better ls)
Remove-Item Alias:ls -ErrorAction SilentlyContinue
function ls {
    & eza --long --icons --no-permissions --no-user
}

# Oh-My-Posh (Prompt)
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/robbyrussell.omp.json" | Invoke-Expression

# Create spacing after and before commands
if (-not (Test-Path function:originalPrompt)) {
    $function:originalPrompt = $function:prompt
}
function prompt {
    Write-Host ""
    & $function:originalPrompt
}
