% This is my base Document Class for all my documents
% Made by Alexandre IOOSS
% Latest revision available on https://gihub.com/erdnaxe/texmf
% Public Domain

\ProvidesClass{my_article}[2018/01/13 Base layout]

% Inherit from article documentclass
\LoadClass[a4paper]{article}

% Encoding
\RequirePackage[utf8]{inputenc}

% French document
\RequirePackage[french]{babel}

% Font
\RequirePackage[upright]{fourier}
\RequirePackage{mathtools}

% Document size
\RequirePackage[top=2cm, bottom=2cm, left=2cm, right=2cm]{geometry}

% Hyperlinks
\RequirePackage[hidelinks]{hyperref}

% Multicolums
\RequirePackage{multicol}

% Remove indentation
\setlength{\parindent}{0pt}
\setlength{\parskip}{6pt}

% Print only the title with maketitle
\renewcommand{\maketitle}{\begin{center} {\huge \getthetitle} \end{center}}

% Put section number in margin
\RequirePackage{titlesec}
\makeatletter
\def\@seccntformat#1{\llap{\csname the#1\endcsname\hspace{3mm}}}
\makeatother

% Document metadata
\newcommand{\getthetitle}{No title}
\renewcommand{\title}[1]{\renewcommand{\getthetitle}{#1}}
\newcommand{\gettheauthor}{No author}
\renewcommand{\author}[1]{\renewcommand{\gettheauthor}{#1}}
\newcommand{\getthedate}{No date}
\renewcommand{\date}[1]{\renewcommand{\getthedate}{#1}}

% Top and bottom decoration
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{1pt}
\renewcommand{\footrulewidth}{1pt}
\lhead{\textbf{\getthetitle}}
\rfoot{Page \thepage~sur~\pageref{LastPage}}
\lfoot{\gettheauthor}
