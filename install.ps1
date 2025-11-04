# Admin
If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltinRole] "Administrator")) {
    Write-Warning "Please run this script as Admin."
    Exit
}

# Install Chocolatey incase not installed already
Function Install-Choco {
    if (-Not (Get-Command choco -ErrorAction SilentlyContinue)) {
        Write-Host "Chocolatey not found. Installing..."
        Set-ExecutionPolicy Bypass -Scope Process -Force
        [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
        Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
    } else {
        Write-Host "Chocolatey is already installed."
    }
}

# Install Chocolatey
Install-Choco

# Refresh environment variables to make choco available immediately
$env:Path += ";$env:ALLUSERSPROFILE\chocolatey\bin"

$packages = @(
    "eza",
    "fastfetch",
    "file",
    "fzf",
    "git",
    "llvm",              # includes clangd
    "lua",
    "luarocks",
    "make",
    "neovim",
    "nodejs-lts",        # for npm
    "oh-my-posh",
    "python",
    "ripgrep",
    "cmake",
    "gcc"
)

Write-Host "Installing packages via Chocolatey..."
choco install $packages -y --ignore-checksums

# lua_ls
if (-Not (Get-Command lua-language-server -ErrorAction SilentlyContinue)) {
    Write-Host "Lua Language Server not found. Installing..."
    choco install lua-language-server -y
}

# pyright
if (-Not (Get-Command pyright -ErrorAction SilentlyContinue)) {
    Write-Host "Installing Pyright..."
    npm install -g pyright
}

Write-Host "Installed."
