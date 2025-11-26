# Admin 
If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltinRole] "Administrator")) {
    Write-Warning "Please run this script as Admin."
    Exit
}

#  Install Choco if not installed
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

# Start Chocolatey
Install-Choco

# Refresh env
$env:Path += ";$env:ALLUSERSPROFILE\chocolatey\bin"

$packages = @(
    "eza",
    "fastfetch",
    "file",
    "fzf",
    "git",
    "llvm",
    "lua-language-server",
    "luarocks",
    "make",
    "mingw",
    "neovim",
    "nodejs-lts",
    "oh-my-posh",
    "python",
    "ripgrep",
    "cmake"
)

Write-Host "Installing packages via Chocolatey..."
choco install $packages -y --ignore-checksums

# Install Pyright via npm if missing
if (-Not (Get-Command pyright -ErrorAction SilentlyContinue)) {
    Write-Host "Installing Pyright..."
    npm install -g pyright
}

Write-Host "All requested packages installed."

