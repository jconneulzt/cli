# cli automation & file management script

param(
    [string]${FileName} = "main"
)

${BaseDir} = Split-Path -Parent ${MyInvocation}.MyCommand.Definition
${ConfigFile} = Join-Path ${BaseDir} "config.ps1"

if (Test-Path ${ConfigFile}) {
    . ${ConfigFile}
    Write-Host "Loaded config from ${ConfigFile}"
} else {
    Write-Warning "Config not found, using defaults"
}

# Backup function
function Backup-File {
    param([string]${Path})
    if (Test-Path ${Path}) {
        Copy-Item ${Path} "${Path}.bak" -Force
        Write-Host "Backup created: ${Path}.bak"
    } else {
        Write-Warning "File ${Path} does not exist"
    }
}

Backup-File "${BaseDir}\${FileName}"

# Loop example
1..5 | ForEach-Object { Write-Host "Processing iteration ${_}: ${FileName}" }

# Setup Update 1760849389

# Setup Update 1760849389

# Setup Update 1760849389

# Setup Update 1760849389

# Setup Update 1760849390

# Setup Update 1760849390

# Setup Update 1760849390

# Setup Update 1760849390

# Setup Update 1760849390

# Setup Update 1760849390

# Setup Update 1760849390

# Setup Update 1760849390

# Setup Update 1760849390
