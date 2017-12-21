% Document Class for science of the engineer pratical work recaps
% Made by Alexandre IOOSS
% Latest revision available on https://gihub.com/erdnaxe/texmf
% Public Domain

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{article_si_work_recaps}[2017/12/20 Layout for science of the engineer pratical work recaps]

\LoadClass{article}

% Basic layout and tools
\RequirePackage[top=2cm, bottom=2cm, left=2cm, right=2cm]{geometry}
\RequirePackage[utf8]{inputenc}
\RequirePackage[upright]{fourier}
\RequirePackage{mathtools}

% French document
\RequirePackage[french]{babel}

% Various packages
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{multicol}
\RequirePackage{fancybox}

% Top and bottom bar
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{1pt}
\renewcommand{\footrulewidth}{1pt}
\rhead{\theauthor}
\chead{Série \theseries~--~\thetitle}
\lhead{\thedate}
\rfoot{Page \thepage~sur~\pageref{LastPage}}
\cfoot{PSI}
\lfoot{Lycée Blaise Pascal à Orsay} % Super prépa !

% Section numbering
\renewcommand{\thesection}{\Roman{section}.}
\renewcommand{\thesubsection}{\arabic{subsection}.} 

% Graphics
\RequirePackage{pgf,tikz}
\usetikzlibrary{arrows}

% Code listing
\RequirePackage{listings}

% Title customisation
\RequirePackage{titling} % for \thedate, \theauthor and \thetitle
\newcommand{\theseries}{Not set}
\newcommand{\series}[1]{% Set the current serie
  \renewcommand{\theseries}{#1}%
}

% Command definitions
\newcommand{\question}[2]{% Take a question number and a title
  \paragraph{Question n°#1} \textbf{#2}%
}

\renewcommand{\maketitle}{% Only print title
  \begin{center} {\huge \thetitle} \end{center}%
}
