\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nreport}[2018/10/01 Kolyan try into cls]

\LoadClass[12pt, a4paper]{report}

% Page layout
\RequirePackage[left=2.5cm,right=2.5cm,top=2.5cm,bottom=2.5cm]{geometry}


\RequirePackage{titlesec}%, color, blindtext}
\RequirePackage{fix-cm, xcolor}

\definecolor{gray75}{gray}{0.55}
\newcommand{\hsp}{\hspace{20pt}}

\titleformat{\chapter}[display]
    {\bfseries\LARGE\itshape\filleft\fontseries{b}\fontsize{80}{100}\selectfont} % format \filcenter
    {\thechapter}%\hsp\textcolor{gray75}{|}\hsp} % label
    {0cm}{\fontseries{b}\fontsize{36}{40}\selectfont}%[ %\Huge\bfseries}[
    %\vspace{-0.5ex}%
   % \rule{\textwidth}{1pt}
    %] % after-code
    
\titlespacing*{\chapter}{0cm}{3cm}{2cm} % sep


\setlength\parindent{1cm}
\let\@afterindentfalse\@afterindenttrue\@afterindenttrue

\titleformat{\section}[block]{\LARGE\bfseries\hspace{1cm}}
                             {\thesection}{3mm}{} 
\titleformat{\subsection}[block]{\large\bfseries\hspace{1cm}}
                                {\thesubsection}{3mm}{}
\titleformat{\subsubsection}[block]{\bfseries\hspace{1cm}}
                                   {\thesubsubsection}{3mm}{}
	
%% links
\RequirePackage{hyperref}
\RequirePackage{bookmark}
\hypersetup{
    colorlinks=true,
    linktoc=all,
    linkcolor=blue,
    %linktocpage=true
}

\let\tableofcontentsORIG\tableofcontents
\renewcommand\tableofcontents{{\hypersetup{linkcolor=black}\tableofcontentsORIG}}

%% to use Russian
\newcommand\rus[1]{\usefont{T2A}{gentium}{m}{n}
\begin{otherlanguage}{russian}
#1 
\end{otherlanguage}}


%% for no-numbering sectioning

%\section*{Introduction}
%\addcontentsline{toc}{section}{Introduction}
%\setcounter{section}{1}

%\chapter*{Second chapter}\label{ch2}
%\addcontentsline{toc}{chapter}{Second chapter}
%\setcounter{chapter}{2}