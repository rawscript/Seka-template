\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Seka}[2026/05/12 v1.0 Seka Academic Template]

% Load base class
\LoadClass[10pt,twocolumn,twoside]{extarticle}

% Required packages
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{amsmath,amsfonts,amssymb}
\RequirePackage{booktabs}
\RequirePackage{array}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{hyperref}
\RequirePackage{cleveref}
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}
\RequirePackage{sectsty}
\RequirePackage{titlesec}
\RequirePackage{etoolbox}
\RequirePackage{setspace}
\RequirePackage{microtype}

% Page geometry - professional margins
\geometry{
  a4paper,
  top=2.2cm,
  bottom=2.2cm,
  left=1.8cm,
  right=1.8cm,
  columnsep=0.7cm,
  headheight=12pt,
  headsep=15pt,
  footskip=25pt
}

% Colors - academic style
\definecolor{titlecolor}{RGB}{0,51,102}
\definecolor{sectioncolor}{RGB}{0,68,136}
\definecolor{linkcolor}{RGB}{0,85,170}
\definecolor{notecolor}{RGB}{240,248,255}

% Hyperref setup
\hypersetup{
  colorlinks=true,
  linkcolor=linkcolor,
  citecolor=linkcolor,
  urlcolor=linkcolor
}

% Section formatting
\sectionfont{\color{sectioncolor}\Large\bfseries}
\subsectionfont{\color{sectioncolor}\large\bfseries}
\subsubsectionfont{\color{sectioncolor}\normalsize\bfseries}

% Title formatting - FIXED
\renewcommand{\maketitle}{
  \twocolumn[%
    \begin{@twocolumnfalse}
      \centering
      {\Huge\bfseries\color{titlecolor}\@title\par}
      \vspace{0.5cm}
      {\large\@author\par}
      \vspace{0.3cm}
      {\normalsize\@date\par}
      \vspace{0.8cm}
      \rule{0.7\textwidth}{0.5pt}
      \vspace{0.8cm}
    \end{@twocolumnfalse}
  ]
}

% Header and footer - FIXED (no section numbers in headers)
\pagestyle{fancy}
\fancyhf{}
\fancyhead[LE,RO]{\nouppercase{\itshape\leftmark}}
\fancyhead[LO,RE]{\nouppercase{\itshape\rightmark}}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0pt}

% First page special style (no header)
\fancypagestyle{firststyle}{
  \fancyhf{}
  \fancyfoot[C]{\thepage}
  \renewcommand{\headrulewidth}{0pt}
}

% Abstract environment
\renewenvironment{abstract}{
  \small
  \begin{center}
    \textbf{\large Abstract}
  \end{center}
  \singlespacing
}{
  \par\vspace{0.5cm}
  \normalsize
}

% Keywords command
\newcommand{\keywords}[1]{
  \small
  \noindent\textbf{Keywords:} #1
  \par\vspace{0.8cm}
}

% Custom environments
\newenvironment{note}{
  \par\noindent
  \colorbox{notecolor}{\begin{minipage}{0.98\linewidth}
  \textbf{Note:}\ 
}{
  \end{minipage}}
  \par\vspace{0.3cm}
}

\newenvironment{important}{
  \par\noindent
  \colorbox{orange!10}{\begin{minipage}{0.98\linewidth}
  \textbf{Important:}\ 
}{
  \end{minipage}}
  \par\vspace{0.3cm}
}

% Cross-referencing shortcuts
\newcommand{\figref}[1]{Figure~\ref{#1}}
\newcommand{\tabref}[1]{Table~\ref{#1}}
\newcommand{\equref}[1]{Equation~\ref{#1}}
\newcommand{\secref}[1]{Section~\ref{#1}}
\newcommand{\appref}[1]{Appendix~\ref{#1}}

% Code environment
\RequirePackage{listings}
\lstset{
  basicstyle=\ttfamily\small,
  backgroundcolor=\color{gray!5},
  frame=single,
  breaklines=true,
  tabsize=2,
  captionpos=b
}
\newenvironment{code}{\captionsetup{type=lstlisting}}{}

% Inline code
\newcommand{\inlinecode}[1]{\texttt{#1}}

% Bibliography
\RequirePackage[backend=biber,style=authoryear,natbib=true]{biblatex}
\setlength\bibitemsep{0.5\itemsep}

% Line spacing
\RequirePackage{setspace}
\singlespacing

% No indentation for paragraphs (journal style)
\setlength{\parindent}{0pt}
\setlength{\parskip}{6pt}

\endinput