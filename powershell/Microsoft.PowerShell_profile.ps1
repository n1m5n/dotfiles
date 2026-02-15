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
Set-Alias v nvim
Set-Alias vim nvim
Set-Alias cat bat
Set-Alias g git
Set-Alias ff fastfetch
Set-Alias nc ncat

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

# Compile opengl project
function glbuild {
    param (
        [Parameter(Mandatory = $true)]
        [string]$file
    )

    $exe = [System.IO.Path]::GetFileNameWithoutExtension($file)

    g++ $file `
        -std=c++17 `
        -IC:/Users/Naman/Documents/libraries/glfw/glfw/include `
        -LC:/Users/Naman/Documents/libraries/glfw/glfw/lib-mingw-w64 `
        -lglfw3 `
        -lopengl32 `
        -lgdi32 `
        -luser32 `
        -lkernel32 `
        -o "$exe.exe"

    if ($LASTEXITCODE -eq 0) {
        Write-Host "Compiled $file -> $exe.exe successfully!" -ForegroundColor Green
    } else {
        Write-Host "Compilation failed." -ForegroundColor Red
    }
}

# Compile raylib project
function raybuild {
    param (
        [Parameter(Mandatory = $true)]
        [string]$file
    )

    # Use the file name as-is
    $exe = [System.IO.Path]::GetFileNameWithoutExtension($file)

    # Compile using the exact command that works
    g++ $file -IC:/Users/Naman/Documents/libraries/raylib/raylib/src -LC:/Users/Naman/Documents/libraries/raylib/raylib/build/raylib -lraylib -lopengl32 -lgdi32 -lwinmm -o "$exe.exe"

    if ($LASTEXITCODE -eq 0) {
        Write-Host "Compiled $file -> $exe.exe successfully!" -ForegroundColor Green
    } else {
        Write-Host "Compilation failed." -ForegroundColor Red
    }
}

# Codeforces generate file
function cf {
    param(
        [Parameter(Position = 0)]
        [string]$Name = "main"
    )

    $content = @"
#include <bits/stdc++.h>
using namespace std;

#define u64 uint64_t

int main()
{
    ios::sync_with_stdio(false);
    cin.tie(nullptr);
}
"@

    $file = "$Name.cpp"
    Set-Content -Path $file -Value $content -Encoding UTF8
    Write-Host "Created $file"
}


# Set prompt
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\robbyrussell.omp.json" | Invoke-Expression

# Vim for shell
Set-PSReadlineOption -EditMode Vi
