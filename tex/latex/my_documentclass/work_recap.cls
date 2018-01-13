% Document Class for work recaps
% Made by Alexandre IOOSS
% Latest revision available on https://gihub.com/erdnaxe/texmf
% Public Domain

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{work_recap}[2018/01/13 Layout for work recaps]

\LoadClass{article}

% Encoding
\RequirePackage[utf8]{inputenc}

% French document
\RequirePackage[french]{babel}

% Font
\RequirePackage[upright]{fourier}
\RequirePackage{mathtools}

% Hyperlinks
\RequirePackage[hidelinks]{hyperref}

% Document size
\RequirePackage[top=2cm, bottom=2cm, left=2cm, right=2cm]{geometry}

% Title, section, subsection and question header
\RequirePackage{titlesec}
\renewcommand{\maketitle}{\begin{center} {\huge \getthetitle} \end{center}}
\renewcommand{\thesection}{\Roman{section}.}
\renewcommand{\thesubsection}{\arabic{subsection}.}
\newcommand{\question}[2]{\paragraph{\llap{\colorbox{blue!10}{Q#1}}} \textbf{#2}}

% Put section number in margin
\makeatletter
\def\@seccntformat#1{\llap{\csname the#1\endcsname\hspace{3mm}}}
\makeatother

% Graphics
\RequirePackage{pgf,tikz}
\usetikzlibrary{arrows}

% Code listing
\RequirePackage{listings}

% Document metadata
\newcommand{\gettheseries}{None}
\newcommand{\series}[1]{\renewcommand{\gettheseries}{#1}}
\newcommand{\getthetitle}{No title}
\renewcommand{\title}[1]{\renewcommand{\getthetitle}{#1}}
\newcommand{\gettheauthor}{No author}
\renewcommand{\author}[1]{\renewcommand{\gettheauthor}{#1}}
\newcommand{\getthedate}{No date}
\renewcommand{\date}[1]{\renewcommand{\getthedate}{#1}}

% Top and bottom bar
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{1pt}
\renewcommand{\footrulewidth}{1pt}
\rhead{\gettheauthor}
\chead{\textbf{Série \gettheseries~--~\getthetitle}}
\lhead{\getthedate}
\rfoot{Page \thepage~sur~\pageref{LastPage}}
\cfoot{PSI}
\lfoot{Lycée Blaise Pascal à Orsay} % Super prépa !
