# Seka Academic Template

[![License: CC BY 4.0](https://img.shields.io/badge/License-CC_BY_1.0-lightgrey.svg)](https://creativecommons.org/licenses/by/1.0/)
[![LaTeX](https://img.shields.io/badge/LaTeX-2e-blue.svg)](https://www.latex-project.org/)
[![Overleaf](https://img.shields.io/badge/Overleaf-Supported-brightgreen.svg)](https://www.overleaf.com)

A clean, professional LaTeX template for academic reports, research articles, and laboratory reports.

## Features

- **No external dependencies** – Works with standard LaTeX distributions
- **No special fonts required** – Compiles on Overleaf and local installations
- **Professional two-column layout** – Suitable for journal submissions
- **Modular structure** – Each section in its own file for easy collaboration
- **Custom environments** – Note, Important, and Code boxes
- **Comprehensive cross-referencing** – Figures, tables, equations, sections
- **Academic color scheme** – Professional and readable
- **Bibliography support** – BibLaTeX with authoryear style
```
## Template Structure
Seka-template/
├── Seka.cls # Main class file (customize styling here)
├── Seka.tex # Main document (imports all sections)
├── sections/ # All content sections
│ ├── introduction.tex
│ ├── literature.tex
│ ├── methodology.tex
│ ├── results.tex
│ ├── discussion.tex
│ └── conclusion.tex
├── references/ # Bibliography files
│ └── references.bib
└── figures/ # Place your images here
```
text

## Quick Start

### On Overleaf (Recommended)

1. Download this repository as a [ZIP] file
2. Create a new project on Overleaf
3. Upload the ZIP file
4. Compile with `pdfLaTeX` or `LuaLaTeX`

### On Local Machine

```bash
git clone https://github.com/rawscript/Seka-template.git
cd Seka-template
pdflatex Seka.tex
bibtex Seka
pdflatex Seka.tex
pdflatex Seka.tex
```
Usage
Edit Seka.tex to change title, author, and abstract

Modify section files in sections/ folder

Add references to references/references.bib

Place figures in figures/ folder

Compile to PDF

Customization
Edit Seka.cls to change:

Colors: Modify the \definecolor lines (lines ~40-45)

Margins: Adjust \geometry parameters (lines ~30-38)

Fonts: Add font packages (e.g., \usepackage{times})

Headers: Modify \fancyhead commands (lines ~85-95)

License
This template is released under the Creative Commons CC BY 1.0 License – free to use, share, and adapt with attribution.

### Contributing
Contributions are welcome! Please:

Fork the repository

Create a feature branch

Submit a pull request

Contact
For questions or suggestions, please open an issue on GitHub.

 Acknowledgments
Inspired by the rho-class template but rebuilt from scratch for reliability and simplicity.
