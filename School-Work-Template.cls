\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{School-Work-Template}[2018/05/13 v1.0 ESIEA School Work class]

\LoadClass[11pt]{book}

%//////////////////////////////////////////////////////////%
%////////////////////// Part Package //////////////////////%
%//////////////////////////////////////////////////////////%


\RequirePackage{ifxetex}

\RequirePackage{textcomp}

\RequirePackage{circuitikz}

\RequirePackage[french]{babel}
\RequirePackage[utf8]{inputenc}
%\RequirePackage[T1]{fontenc}

% Maths libs 
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{mathrsfs}
\RequirePackage{mathtools}
\RequirePackage{mathabx}
\RequirePackage{enumerate}

% Images
\RequirePackage{graphicx}
\graphicspath{ {./img/} }

% Have a degres symbol
\renewcommand{\deg}{\ensuremath{^{\circ}}\xspace}

% Get lastpage number
\RequirePackage{lastpage}

% Background libs
\RequirePackage{background}

% Source code
\RequirePackage{listings}

% Tikz lib to draw figures and plan
\RequirePackage{tikz}
\usetikzlibrary{fadings,arrows,shapes,automata,shadows,circuits,angles,quotes}

\RequirePackage{schemabloc}

% 
\RequirePackage{pgf}
\RequirePackage{pgffor}

% Lib framed command
\RequirePackage{framed}

% wrapfigure, wraptable
\RequirePackage{wrapfig,booktabs}

% captionof
\RequirePackage{lmodern}

% gantt
\RequirePackage{pgfgantt}

% rowcolor
\RequirePackage{colortbl}

% Customize title
\RequirePackage{titlesec}

% color box
\RequirePackage{tcolorbox}

% conditions
\RequirePackage{xifthen}

\RequirePackage{fancyhdr}

\RequirePackage{pgfplots}

% contour
\RequirePackage{eso-pic}
\RequirePackage{contour}



%//////////////////////////////////////////////////////////%
%/////////////////// Customization Part ///////////////////%
%//////////////////////////////////////////////////////////%

%///////////////// Part document format
\RequirePackage{geometry}
\geometry{
	a4paper,
	total={160mm,257mm},
	left=23mm,
	top=32mm,
	bottom=23mm,
	headsep=15mm,
}


%///////////////// Default color
\definecolor{bleu_esiea}{HTML}{0086C7}

%///////////////// Part Header and Footer
\pagestyle{fancy}
\let\Subsectionmark\subsectionmark
\def\subsectionmark#1{\def\Subsectionname{#1}\Subsectionmark{#1}}
\renewcommand{\headrulewidth}{0pt}
\fancyhead[C]{}
\fancyhead[LE]{\sffamily\color{bleu_esiea}{\small {\Large
\begin{tikzpicture}
\node at (0,0){\includegraphics[height=1.1cm]{img/uefi.eps}};
\end{tikzpicture}
\hspace{-0.4cm}
\begin{tikzfadingfrompicture}[name=tikzsection]
	\node [text=white]  {\tiny 101100010100101110101101011101001000100110101011010110001011010010110};
\end{tikzfadingfrompicture}
\begin{tikzpicture}
\node [text=white,inner sep=0pt,outer sep=0pt] (textnode) {\tiny 101100010100101110101101011101001000100110101011010110001011010010110};
\shade[path fading=tikzsection,fit fading=false,left color=gray,right color=white] 
(textnode.south west) rectangle (textnode.north east);
\end{tikzpicture}%
 \vspace{-1cm}\\\hspace{1.5cm}\color{gray!50!black}$\ulcorner$} \textbf{\color{gray!50!black}\leftmark}}{\Large\color{gray!50!black} \ $\lrcorner$}}
\fancyhead[RO]{\sffamily\color{bleu_esiea}{\small\color{gray!50!black} \textbf{Section} |  \rightmark}\\{
		\begin{tikzfadingfrompicture}[name=tikzsection]
			\node [text=white]  {\tiny 101100010100101110101101011101001000100110101011010110001011010010110};
		\end{tikzfadingfrompicture}
		\begin{tikzpicture}
		\node [text=white,inner sep=0pt,outer sep=0pt] (textnode) {\tiny 101100010100101110101101011101001000100110101011010110001011010010110};
		\shade[path fading=tikzsection,fit fading=false,left color=white,right color=gray] 
		(textnode.south west) rectangle (textnode.north east);
		\end{tikzpicture}%
	}}
\fancyhead[LO,RE]{}
\fancyfoot[C]{}
\fancyfoot[LO]{}
\fancyfoot[RE]{}
\fancyfoot[LE]{\sffamily\color{bleu_esiea}\noindent\tikz \draw[line width=0.02cm](0,0) -- (2,0);\\\textbf{\color{gray!50!black}{\small Page \thepage }}\vspace{-0.25cm}}
\fancyfoot[RO]{\sffamily\color{bleu_esiea}\noindent\tikz \draw[line width=0.02cm](0,0) -- (2,0);\\\textbf{\color{gray!50!black}{\small Page \thepage }}\vspace{-0.25cm}}

\fancypagestyle{plain}{ %
	\fancyhf{} % remove everything
	\renewcommand{\headrulewidth}{0pt} % remove lines as well
	\renewcommand{\footrulewidth}{0pt}
	\fancyfoot[LE]{\sffamily\color{bleu_esiea}\noindent\tikz \draw[line width=0.02cm](0,0) -- (2,0);\\\textbf{\color{gray!50!black}{\small Page \thepage }}\vspace{-0.25cm}}
	\fancyfoot[RO]{\sffamily\color{bleu_esiea}\noindent\tikz \draw[line width=0.02cm](0,0) -- (2,0);\\\textbf{\color{gray!50!black}{\small Page \thepage }}\vspace{-0.25cm}}
}




%///////////////// Custom title
\titleformat{\chapter}[display]{\sffamily\color{gray!50!black}\bfseries\scshape\Huge}{}{-7em}{\vspace*{0.75cm}\hspace{-1,5cm}\begin{tikzpicture}\fill[bleu_esiea] (0,0) rectangle (2,2);
\node at (1,1) {\textcolor{white}{{\fontsize{40}{50}\selectfont  \thechapter}}};
\draw[color=bleu_esiea] (0.005,0) -- (0.005,-2);
\node[rotate=90,color=bleu_esiea] at (-0.5,0) {\LARGE{\sffamily Chapitre}};
\end{tikzpicture}\vspace{-1.75cm}\\\vspace{-0.25cm}}[\thispagestyle{plain}]

\titleformat{name=\chapter,numberless}[hang]
{\sffamily\color{bleu_esiea}\bfseries\scshape\LARGE}
{}
{-0.35em}
{}[\hrule]


\titleformat{\section}[hang]{\sffamily\color{bleu_esiea}\bfseries\scshape\LARGE}{}{-0.35em}{{\Huge \thesection} $\bullet$ \color{gray!50!black}}[\hrule\vspace{0.25cm}]

\titleformat{name=\section,numberless}[hang]
{\sffamily\color{bleu_esiea}\bfseries\scshape\LARGE}
{}
{-0.35em}
{\color{gray!50!black}}[\hrule\vspace{0.25cm}]

\titleformat{\subsection}[hang]{\sffamily\color{bleu_esiea}\bfseries\scshape\large}{}{-0.35em}{{\Large \thesubsection} 
	\vline height 15pt depth 6pt width 2pt 
	\ \color{gray!50!black}}[\vspace{0.25cm}]

\titleformat{\subsubsection}[hang]{}{}{-0.35em}{\color{gray!50!black}}[\vspace{0.25cm}]


%//////////////////////////////////////////////////////////%
%/////////////////// Customization Part ///////////////////%
%//////////////////////////////////////////////////////////%

%///////////////// Specialized commands
\def\@abs{\relax}
\newcommand{\abs}[1]{\gdef\@abs{#1}}

\def\@MainTitle{\relax}
\newcommand{\MainTitle}[1]{\gdef\@MainTitle{#1}}

\def\@SubTitle{\relax}
\newcommand{\SubTitle}[1]{\gdef\@SubTitle{#1}}

%///////////////// End specialized commands

% Create abstract
\newcommand\makeabs{
	\begin{abstract}
		\noindent\hrulefill\\
		\@abs 
		
		\noindent\hrulefill 
	\end{abstract}
}

\newcommand{\Title}[2]{\title{\sffamily\vspace{-3cm}\ \\{\Huge \textbf{#1}} \\#2}
	\newcommand\pageTitle{
		\textcolor{white}{\Large \underline{\textbf{#1} : #2}}% input command
}}


\renewcommand{\figurename}{Fig.}

% à commenter
%\let\cleardoublepage=\clearpage

% à commenter
\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
	\thispagestyle{empty}% original style: plain
	\global\@topnum\z@
	\@afterindentfalse
	\secdef\@chapter\@schapter}

\renewcommand*{\cleardoublepage}{\clearpage\if@twoside \ifodd\c@page\else
	\hbox{}%
	\thispagestyle{empty}%
	\newpage%
	\if@twocolumn\hbox{}\newpage\fi\fi\fi}
