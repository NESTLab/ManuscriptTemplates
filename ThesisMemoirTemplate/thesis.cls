% 
% Identification
% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}[2018/03/22 Nest Lab Thesis Document]

% 
% Parent class
% 
\LoadClass[12pt,a4paper,oldfontcommands]{memoir}

% 
% Packages
% Common with Article
% 
\RequirePackage{setspace}
\RequirePackage[dvips]{graphicx}
\RequirePackage{tabularx}
\RequirePackage{amsmath}
% \RequirePackage{hyperref} % Edited for Memoir Class
\RequirePackage{caption}
\RequirePackage{marvosym}
\RequirePackage{xcolor}
\RequirePackage{colortbl}
\RequirePackage{longtable}
\RequirePackage{etoolbox}
\RequirePackage{cite}

% 
% Packages
% For Memoir Package
% 
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{microtype}
\RequirePackage{times}
% Change the hyperref as per needed
\RequirePackage[
breaklinks=true,colorlinks=true,
%linkcolor=blue,urlcolor=blue,citecolor=blue,% PDF VIEW
linkcolor=black,urlcolor=black,citecolor=black,% PRINT
bookmarks=true,bookmarksopenlevel=2]{hyperref}
% Change the geometry as per needed
\RequirePackage{geometry}
% PDF VIEW
% \geometry{total={210mm,297mm},
% left=25mm,right=25mm,%
% bindingoffset=0mm, top=25mm,bottom=25mm}
% PRINT
\geometry{total={210mm,297mm},
left=20mm,right=20mm,
bindingoffset=10mm, top=25mm,bottom=25mm}

% 
% Settings for Chapters
% For Memoir Package
% Different types of title to change the look
% 
\chapterstyle{bianchi}
% \chapterstyle{ger}
% \chapterstyle{madsen}
% \chapterstyle{ell}

% 
% Settings for Section, Sub Section, Sub Sub Section
% For Memoir Package
% 
\setsecheadstyle{\Large\bfseries\sffamily\raggedright}
\setsubsecheadstyle{\large\bfseries\sffamily\raggedright}
\setsubsubsecheadstyle{\bfseries\sffamily\raggedright}
\maxsecnumdepth{subsection} % chapters, sections, and subsections are numbered
\maxtocdepth{subsection} % chapters, sections, and subsections are in the Table of Contents
\setsecheadstyle{\Large\bfseries\sffamily\raggedright}
\setsubsecheadstyle{\large\bfseries\sffamily\raggedright}
\setsubsubsecheadstyle{\bfseries\sffamily\raggedright}

% 
% Spacing and style
%
\setlength{\textheight}{8.63in}
\setlength{\textwidth}{5.9in}
\setlength{\topmargin}{-0.2in}
\setlength{\oddsidemargin}{0.3in}
\setlength{\evensidemargin}{0.3in}
\setlength{\headsep}{0.2in}

%
% Header and Footer Rules
%
\makeheadrule{headings}{\textwidth}{0.3pt}

% 
% Document information
% 
\gdef\@author{Missing name}
\def\thesistitle#1{\gdef\@thesistitle{#1}}
\gdef\@thesistitle{Missing Thesis Title}
\def\department#1{\gdef\@department{#1}}
\gdef\@department{Missing Department Name}
\def\degree#1{\gdef\@degree{#1}}
\gdef\@degree{Missing Degree Information}
\def\date#1{\gdef\@date{#1}}
\gdef\@date{MONTH YYYY}
\def\advisor#1{\gdef\@advisor{#1}}
\gdef\@advisor{Missing Advisor's Name}
\def\firstcommittee#1{\gdef\@firstcommittee{#1}}
\gdef\@firstcommittee{Missing First Committee Member}
\def\firstcommitteerole#1{\gdef\@firstcommitteerole{#1}}
\gdef\@firstcommitteerole{}
\def\secondcommittee#1{\gdef\@secondcommittee{#1}}
\gdef\@secondcommittee{Missing Second Committee Member}
\def\secondcommitteerole#1{\gdef\@secondcommitteerole{#1}}
\gdef\@secondcommitteerole{}
\def\thirdcommittee#1{\gdef\@thirdcommittee{#1}}
\gdef\@thirdcommittee{}
\def\thirdcommitteerole#1{\gdef\@thirdcommitteerole{#1}}
\gdef\@thirdcommitteerole{}

%
% Title
%
\renewcommand{\maketitle}{
    \newcommand{\brk}{\vskip 0.18in}
    \thispagestyle{empty}
    \begin{center}
        \brk
        {\large 
    	    \textbf{
    	        \@thesistitle
    	            }
        }\brk
        by
        \brk
        \@author
        \brk\brk
        A Thesis
        \brk
        Submitted to the Faculty
        \brk
        of the 
        \brk
        WORCESTER POLYTECHNIC INSTITUTE
    	\brk
        In partial fulfillment of the requirements for the
        \brk
        Degree of \@degree
        \brk
        in
        \brk
        \@department
        \brk
        by
        \brk\brk
        \rule{3in}{1.2pt}
        \brk
        \@date
    \end{center}
    \vfill
    APPROVED:\\
    \newline
    \rule{3in}{0.8pt}
    \newline
    \@advisor, Advisor\\
    \newline
    \rule{3in}{0.8pt}
    \newline
    \@firstcommittee\@firstcommitteerole\\
    \newline
    \rule{3in}{0.8pt}
    \newline
    \@secondcommittee\@secondcommitteerole\\
    \ifdefempty{\@thirdcommittee}{}{
        \newline
        \rule{3in}{0.8pt}
        \newline
        \@thirdcommittee\@thirdcommitteerole
    }
}