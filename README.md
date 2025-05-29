# Pandoc Resume Template

A modern, version-controlled resume system that generates multiple output formats from a single YAML source file.

## Features

- **Single Source**: Maintain your resume data in a clean YAML format
- **Multiple Outputs**: Generate HTML, PDF, Markdown, and plain text versions
- **Professional Styling**: Beautiful, professional templates for each format
- **Version Control Friendly**: Plain text source works perfectly with Git
- **Easy Updates**: Change your data once, regenerate all formats

## Requirements

### Essential
- [Pandoc](https://pandoc.org/installing.html) - Document conversion tool

### For PDF Generation
- [MiKTeX](https://miktex.org/) or [TeX Live](https://www.tug.org/texlive/) - LaTeX distribution
- moderncv LaTeX package (usually included with TeX distributions)

## Quick Start

1. **Install Dependencies**:
   ```powershell
   # Install Pandoc using Chocolatey (recommended)
   choco install pandoc

   # Or download from https://pandoc.org/installing.html
   ```

2. **Edit Your Resume**:
   ```powershell
   # Edit the source file with your information
   notepad resume-source.md
   ```

3. **Generate All Formats**:
   ```powershell
   .\build.ps1
   ```

4. **View Results**:
   Your generated resume files will be in the `output/` directory:
   - `resume.html` - Web-ready HTML with embedded CSS
   - `resume.pdf` - Professional PDF (requires LaTeX)
   - `resume.md` - Clean Markdown
   - `resume.txt` - Plain text

## Usage

### Build Specific Formats
```powershell
.\build.ps1 html      # HTML only
.\build.ps1 pdf       # PDF only (requires LaTeX)
.\build.ps1 markdown  # Markdown only
.\build.ps1 plain     # Plain text only
```

### Clean Generated Files
```powershell
.\build.ps1 clean
```

### Get Help
```powershell
.\build.ps1 help
```

## Customization

### YAML Structure
The `resume-source.md` file contains YAML frontmatter with this structure:

```yaml
---
name: Your Name
location: Your Location
email: your@email.com
phone: +1-234-567-8900
linkedin: https://linkedin.com/in/yourprofile
github: https://github.com/yourusername

summary: |
  Your professional summary here...

skills:
  - category: Category Name
    items:
      - Skill 1
      - Skill 2

experience:
  - title: Job Title
    company: Company Name
    location: Location
    dates: Start Date – End Date
    description: |
      Brief description of the role...
    achievements:
      - Achievement 1
      - Achievement 2
---
```

### Template Customization
- **HTML**: Edit `resume.pandoc.html` to modify styling and layout
- **PDF**: Edit `resume.pandoc.tex` to change LaTeX formatting
- **Markdown**: Edit `resume.pandoc.markdown` for markdown output
- **Plain Text**: Edit `resume.pandoc.plain` for text formatting

### PDF Styling Options
In your `resume-source.md`, you can customize the PDF appearance:

```yaml
style: casual    # casual, classic, oldstyle, banking
color: blue      # blue, orange, green, red, purple, grey, black
fontsize: 11pt
```

## Troubleshooting

### PDF Generation Issues
If PDF generation fails:

1. **Install LaTeX**: Make sure you have MiKTeX or TeX Live installed
2. **Install moderncv**: Usually included, but may need manual installation:
   ```powershell
   # In MiKTeX Console, install the moderncv package
   ```
3. **Check PATH**: Ensure `xelatex` is in your system PATH

### Windows-Specific Notes
- Use PowerShell to run build commands
- The build script handles all necessary Pandoc flags
- File paths use forward slashes for compatibility

## File Structure

```
├── resume-source.md        # Your resume data (edit this!)
├── resume.pandoc.html      # HTML template
├── resume.pandoc.tex       # LaTeX template for PDF
├── resume.pandoc.markdown  # Markdown template
├── resume.pandoc.plain     # Plain text template
├── build.ps1              # PowerShell build script
├── README.md              # This file
└── output/                # Generated files (created by build script)
    ├── resume.html
    ├── resume.pdf
    ├── resume.md
    └── resume.txt
```

## Benefits

- **Maintainable**: Single source of truth for all resume formats
- **Professional**: Clean, modern templates that look great
- **Flexible**: Easy to customize styling and add new sections
- **Portable**: Generate files for different applications (web, email, print)
- **Version Control**: Track changes over time with Git

## Credits

Based on the [pandoc_resume_template](https://github.com/samijuvonen/pandoc_resume_template) by Sami Juvonen, adapted for Windows and enhanced with additional features. 