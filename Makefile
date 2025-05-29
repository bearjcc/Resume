# Resume Makefile
# Builds resume in multiple formats from YAML source

RESUME_YAML = resume.yml
OUTPUT_DIR = output

# Default target
all: html pdf markdown plain

# Create output directory
$(OUTPUT_DIR):
	@if not exist "$(OUTPUT_DIR)" mkdir "$(OUTPUT_DIR)"

# HTML output with embedded CSS
html: $(OUTPUT_DIR)
	pandoc $(RESUME_YAML) --template=resume.pandoc.html --self-contained -o $(OUTPUT_DIR)/resume.html

# PDF output using LaTeX (requires moderncv package)
pdf: $(OUTPUT_DIR)
	pandoc $(RESUME_YAML) --template=resume.pandoc.tex --pdf-engine=xelatex -o $(OUTPUT_DIR)/resume.pdf

# Markdown output
markdown: $(OUTPUT_DIR)
	pandoc $(RESUME_YAML) --template=resume.pandoc.markdown -o $(OUTPUT_DIR)/resume.md

# Plain text output
plain: $(OUTPUT_DIR)
	pandoc $(RESUME_YAML) --template=resume.pandoc.plain -o $(OUTPUT_DIR)/resume.txt

# Clean generated files
clean:
	@if exist "$(OUTPUT_DIR)" rmdir /s /q "$(OUTPUT_DIR)"

# Help target
help:
	@echo Available targets:
	@echo   all       - Build all formats (default)
	@echo   html      - Build HTML version
	@echo   pdf       - Build PDF version (requires XeLaTeX and moderncv)
	@echo   markdown  - Build Markdown version
	@echo   plain     - Build plain text version
	@echo   clean     - Remove generated files
	@echo   help      - Show this help

.PHONY: all html pdf markdown plain clean help 