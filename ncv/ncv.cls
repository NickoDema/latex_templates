\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ncv}[2011/03/26 My custom CV class]

\LoadClass[11pt, a4paper]{report}

\RequirePackage{titlesec}

\setlength{\parindent}{0mm}
\titleformat{\section}
  {\LARGE\raggedright}
  {}{0em}
  {}
  [\titlerule] 


\RequirePackage{geometry}
\geometry{
	paper=a4paper,
	top=1.75cm,
	bottom=1.75cm,
	left=2cm,
	right=2cm,
	headheight=0.75cm,
	footskip=1cm,
	headsep=0.5cm,
}

\RequirePackage{wrapfig}
\RequirePackage{subcaption}

\RequirePackage{longtable}


\def\@FullName{Name}
\newcommand{\name}[1]{
  \def\@FullName{#1}
}

\def\@Photo{foo@bar.com}
\newcommand{\photo}[1]{
  \def\@Photo{#1}
}

\def\@Mail{foo@bar.com}
\newcommand{\mail}[1]{
  \def\@Mail{#1}
}

\def\@GitHub{}
\newcommand{\github}[1]{
  \def\@GitHub{#1}
}


\def\@Phone{}
\newcommand{\phone}[1]{
  \def\@Phone{#1}
}

\def\@YouTube{}
\newcommand{\youtube}[1]{
  \def\@YouTube{#1}
}

\def\@Telegram{}
\newcommand{\telegram}[1]{
  \def\@Telegram{#1}
}

\def\@Instagram{}
\newcommand{\instagram}[1]{
  \def\@Instagram{#1}
}


\newcommand{\emptystring}{
	\phantom{Empty}
}

\newcommand{\header}{
\begin{three_col_entry_list}
\parbox[t]{0.25\textwidth}{
    \includegraphics[align=t, width=0.7\linewidth]{\@Photo}
	}%
	& \parbox[t]{0.45\textwidth}{
	    \vspace{0cm}
	    \Large
	    \onehalfspacing
		{\huge \@FullName}\vspace{0.3cm}\\
% 		{\vspace*{1em}}
% 		{\tiny \emptystring}
% 		\vspace{0.4cm}
		\faEnvelope \ \@Mail\\
		\faPaperPlane \ \@Telegram\\
		\faPhone \ \hspace{0.1mm} \@Phone\\
	}
	& \parbox[t]{0.3\textwidth}{
	    \vspace{0cm}
	    \Large
	    \onehalfspacing
		{\huge \emptystring \vspace{0.3cm}}
		\faYoutubePlay \ \@YouTube\\
		\faInstagram \hspace{1mm} \@Instagram
	}
\end{three_col_entry_list}}


% Environment for publication list
\newenvironment{pub_itemize}[0]
    {\begin{itemize}[leftmargin=*,topsep=0pt]}
    {\end{itemize}}
    

\setlength{\LTpre}{0pt} % Remove default whitespace before longtable
\setlength{\LTpost}{0pt} % Remove default whitespace after longtable
\setlength{\tabcolsep}{0pt} % No spacing between table columns

% Environment to hold a list of entries with two columns
\newenvironment{two_col_entry_list}{
	\begin{longtable}[l]{l l}}
	{\end{longtable}}


% Environment to hold a list of entries with three columns
\newenvironment{three_col_entry_list}{
	\begin{longtable}[l]{l l l}}
	{\end{longtable}}


\newcommand{\entryh}[4]{
	\parbox[t]{0.25\textwidth}{#1} & \parbox[t]{0.75\textwidth}{\textbf{#2}                                   \hfill 
	                                {\footnotesize \textbf{#3}}\\
	                                {#4}}\\\\}


\newcommand{\entryhc}[4]{
	\parbox[t]{0.25\textwidth}{
	{\hfill#1\hfill}
	} 
	& \parbox[t]{0.75\textwidth}{\textbf{#2} \hfill 
	                            {\footnotesize \textbf{#3}}\\
	                            {#4}}\\\\}


\newcommand{\entryc}[2]{
	\parbox[t]{0.25\textwidth}{
	{\hfill#1\hfill}
	}
	&\parbox[t]{0.75\textwidth}{
	#2
	}\\\\}
	                            
\newcommand{\entry}[2]{                           
	\parbox[t]{0.25\textwidth}{
		#1 
	}
	&\parbox[t]{0.75\textwidth}{
	#2
	}\\\\}

	
\newcommand{\slashsep}{\hspace{3mm}/\hspace{3mm}}