% 
% Identification
% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}[2018/03/22 Nest Lab Thesis Document]

% 
% Parent class
% 
\LoadClass[12pt]{report}

% 
% Packages
% 
\RequirePackage{setspace}
\RequirePackage{graphicx}
\RequirePackage{tabularx}
\RequirePackage{amsmath}
\RequirePackage{hyperref}
\RequirePackage{caption}
\RequirePackage{subfigure}
\RequirePackage{marvosym}
\RequirePackage{xcolor}
\RequirePackage{colortbl}
\RequirePackage{longtable}
\RequirePackage{etoolbox}
\RequirePackage{cite}

% 
% Spacing and style
%
\setlength{\textheight}{8.63in}
\setlength{\textwidth}{5.9in}
\setlength{\topmargin}{-0.2in}
\setlength{\oddsidemargin}{0.3in}
\setlength{\evensidemargin}{0.3in}
\setlength{\headsep}{0.0in}

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