# Resume Build Script for PowerShell
# Builds resume in multiple formats from YAML source

param(
    [string]$Target = "all"
)

$RESUME_INPUT = "resume-source.md"
$OUTPUT_DIR = "output"

# Function to create output directory
function New-OutputDir {
    if (-not (Test-Path $OUTPUT_DIR)) {
        New-Item -ItemType Directory -Path $OUTPUT_DIR | Out-Null
        Write-Host "Created output directory: $OUTPUT_DIR"
    }
}

# Function to build HTML
function Build-Html {
    Write-Host "Building HTML resume..."
    New-OutputDir
    pandoc $RESUME_INPUT --template=resume.pandoc.html --embed-resources --standalone -o "$OUTPUT_DIR/resume.html"
    if ($LASTEXITCODE -eq 0) {
        Write-Host "[SUCCESS] HTML resume built: $OUTPUT_DIR/resume.html"
    } else {
        Write-Error "[ERROR] Failed to build HTML resume"
    }
}

# Function to build PDF
function Build-Pdf {
    Write-Host "Building PDF resume..."
    New-OutputDir
    pandoc $RESUME_INPUT --template=resume.pandoc.tex --pdf-engine=xelatex -o "$OUTPUT_DIR/resume.pdf"
    if ($LASTEXITCODE -eq 0) {
        Write-Host "[SUCCESS] PDF resume built: $OUTPUT_DIR/resume.pdf"
    } else {
        Write-Error "[ERROR] Failed to build PDF resume (requires XeLaTeX and moderncv package)"
    }
}

# Function to build Markdown
function Build-Markdown {
    Write-Host "Building Markdown resume..."
    New-OutputDir
    pandoc $RESUME_INPUT --template=resume.pandoc.markdown -o "$OUTPUT_DIR/resume.md"
    if ($LASTEXITCODE -eq 0) {
        Write-Host "[SUCCESS] Markdown resume built: $OUTPUT_DIR/resume.md"
    } else {
        Write-Error "[ERROR] Failed to build Markdown resume"
    }
}

# Function to build plain text
function Build-Plain {
    Write-Host "Building plain text resume..."
    New-OutputDir
    pandoc $RESUME_INPUT --template=resume.pandoc.plain -o "$OUTPUT_DIR/resume.txt"
    if ($LASTEXITCODE -eq 0) {
        Write-Host "[SUCCESS] Plain text resume built: $OUTPUT_DIR/resume.txt"
    } else {
        Write-Error "[ERROR] Failed to build plain text resume"
    }
}

# Function to clean output
function Clean-Output {
    if (Test-Path $OUTPUT_DIR) {
        Remove-Item $OUTPUT_DIR -Recurse -Force
        Write-Host "[SUCCESS] Cleaned output directory"
    } else {
        Write-Host "Output directory does not exist, nothing to clean"
    }
}

# Function to show help
function Show-Help {
    Write-Host ""
    Write-Host "Resume Build Script"
    Write-Host "==================="
    Write-Host ""
    Write-Host "Usage: .\build.ps1 [target]"
    Write-Host ""
    Write-Host "Available targets:"
    Write-Host "  all       - Build all formats (default)"
    Write-Host "  html      - Build HTML version"
    Write-Host "  pdf       - Build PDF version (requires XeLaTeX and moderncv)"
    Write-Host "  markdown  - Build Markdown version"
    Write-Host "  plain     - Build plain text version"
    Write-Host "  clean     - Remove generated files"
    Write-Host "  help      - Show this help"
    Write-Host ""
    Write-Host "Examples:"
    Write-Host "  .\build.ps1           # Build all formats"
    Write-Host "  .\build.ps1 html      # Build HTML only"
    Write-Host "  .\build.ps1 clean     # Clean output files"
    Write-Host ""
}

# Main script logic
switch ($Target.ToLower()) {
    "all" {
        Write-Host "Building all resume formats..."
        Build-Html
        Build-Pdf
        Build-Markdown
        Build-Plain
        Write-Host ""
        Write-Host "[SUCCESS] All formats built successfully!"
        Write-Host "Check the $OUTPUT_DIR directory for your resume files."
    }
    "html" { Build-Html }
    "pdf" { Build-Pdf }
    "markdown" { Build-Markdown }
    "plain" { Build-Plain }
    "clean" { Clean-Output }
    "help" { Show-Help }
    default {
        Write-Error "Unknown target: $Target"
        Show-Help
        exit 1
    }
} 