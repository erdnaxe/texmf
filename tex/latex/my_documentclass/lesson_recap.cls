% Document Class for lesson recaps
% Inherit from my_article document class
% Made by Alexandre IOOSS
% Latest revision available on https://gihub.com/erdnaxe/texmf
% Public Domain

\ProvidesClass{lesson_recap}[Layout for lesson recaps]

\LoadClass{my_article}

% Boxes
\RequirePackage[most]{tcolorbox}
\tcbset{fonttitle=\bfseries, colback=white, colframe=gray}

% Top and bottom decoration
\rhead{\gettheauthor}
\lhead{\textbf{\getthetitle}}
\cfoot{PSI}
\lfoot{Lycée Blaise Pascal à Orsay} % Super prépa !
