% Document Class for science of the engineer lesson recaps
% Made by Alexandre IOOSS
% Latest revision available on https://gihub.com/erdnaxe/texmf
% Public Domain

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{article_si_lesson_recaps}[Layout for science of the engineer lesson recaps]

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

% Boxes
\RequirePackage[most]{tcolorbox}
\tcbset{fonttitle=\bfseries, colback=white, colframe=gray}

% Top and bottom bar
\RequirePackage{titling} % for \theauthor and \thetitle
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{1pt}
\renewcommand{\footrulewidth}{1pt}
\rhead{\theauthor}
\chead{}
\lhead{\thetitle}
\rfoot{Page \thepage~sur~\pageref{LastPage}}
\cfoot{PSI}
\lfoot{Lycée Blaise Pascal à Orsay} % Super prépa !
