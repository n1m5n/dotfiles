try {
    [Console]::InputEncoding  = [System.Text.Encoding]::UTF8
    [Console]::OutputEncoding = [System.Text.Encoding]::UTF8
    $OutputEncoding = [System.Text.UTF8Encoding]::new($false)
    chcp 65001 > $null
} catch {}

# Stop highlighting dirs
$PSStyle.FileInfo.Directory = ""

# Stop pwsh version print
cls

# Aliases
Set-Alias vim nvim
Set-Alias c Clear-Host
Set-Alias g git

# Eza (better ls)
Remove-Item Alias:ls -ErrorAction SilentlyContinue
function ls {
    & eza -a --icons
}
function ll {
    & eza -la --icons
}

# Start up fastfetch
if (Get-Command fastfetch -ErrorAction SilentlyContinue) {
    fastfetch -c "C:/Users/Naman/.config/fastfetch/config.jsonc"
}

# Start oh-my-posh
oh-my-posh init pwsh --config "C:\Users\Naman\.config\oh-my-posh\vague_bubbles.json" | Invoke-Expression
