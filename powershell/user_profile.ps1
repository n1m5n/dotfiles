try {
    [Console]::InputEncoding  = [System.Text.Encoding]::UTF8
    [Console]::OutputEncoding = [System.Text.Encoding]::UTF8
    $OutputEncoding = [System.Text.UTF8Encoding]::new($false)
    chcp 65001 > $null
} catch {}

# Stop italicizing autosuggestions
Set-PSReadLineOption -Colors @{
    InlinePrediction = [Console]::ForegroundColor
}

# Stop highlighting dirs
$PSStyle.FileInfo.Directory = ""

# Aliases
Set-Alias vim nvim
Set-Alias c Clear-Host
Set-Alias g git
Set-Alias ff fastfetch

# Eza (better ls)
Remove-Item Alias:ls -ErrorAction SilentlyContinue
function ls {
    & eza  --icons
}
function la {
    & eza -a --icons
}
function ll {
    & eza -la --icons
}

# Compile raylib project
function raybuild {
    param (
        [Parameter(Mandatory = $true)]
        [string]$file
    )

    # Use the reg file name
    $exe = [System.IO.Path]::GetFileNameWithoutExtension($file)

    # Compile using the exact command that works
    g++ $file -IC:/raylib/raylib/src -LC:/raylib/raylib/build/raylib -lraylib -lopengl32 -lgdi32 -lwinmm -o "$exe.exe"

    if ($LASTEXITCODE -eq 0) {
        Write-Host "Compiled $file -> $exe.exe successfully!" -ForegroundColor Green
    } else {
        Write-Host "Compilation failed." -ForegroundColor Red
    }
}

# Set prompt
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\robbyrussell.omp.json" | Invoke-Expression
