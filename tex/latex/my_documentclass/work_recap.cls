% Document Class for work recaps
% Inherit from my_article document class
% Made by Alexandre IOOSS
% Latest revision available on https://gihub.com/erdnaxe/texmf
% Public Domain

\ProvidesClass{work_recap}[2018/01/13 Layout for work recaps]

\LoadClass{my_article}

% Title, section, subsection and question header
\renewcommand{\thesection}{\Roman{section}.}
\renewcommand{\thesubsection}{\arabic{subsection}.}
\newcommand{\question}[2]{\paragraph{\llap{\colorbox{blue!10}{Q#1}}} \textbf{#2}}

% Graphic import from GeoGebra
\RequirePackage{pgf,tikz}
\usetikzlibrary{arrows}

% Code listing
\RequirePackage{listings}

% Extra document metadata
\newcommand{\gettheseries}{None}
\newcommand{\series}[1]{\renewcommand{\gettheseries}{#1}}

% Top and bottom bar
\rhead{\gettheauthor}
\chead{\textbf{Série \gettheseries~--~\getthetitle}}
\lhead{\getthedate}
\cfoot{PSI}
\lfoot{Lycée Blaise Pascal à Orsay} % Super prépa !
