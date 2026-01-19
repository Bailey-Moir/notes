\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{atomic}
\LoadClass{article} 

\newcommand{\pwd}{/home/charps/Documents/vaults/tex}

\RequirePackage{tikz-cd}
\RequirePackage{mathrsfs}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage[skip=5pt]{parskip}

\RequirePackage{amsthm}

\newtheorem{theorem}{Theorem}
\newtheorem{example}[theorem]{Example}
\newtheorem{characterisation}[theorem]{Characterisation}
\newtheorem*{characterisation*}{Characterisation}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{conjecture}[theorem]{Conjecture}
\newtheorem{prop}[theorem]{Proposition}
\theoremstyle{theorem}
\newtheorem{definition}[theorem]{Definition}

\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}
\newtheorem*{remark*}{Remark}
\let\proof\relax
\let\endproof\relax
\newtheorem*{proof}{Proof}

\RequirePackage{hyperref}
\RequirePackage{xr-hyper} 
\RequirePackage[capitalize,nameinlink,noabbrev]{cleveref}
\hypersetup{
    colorlinks = true,
    citecolor = cyan
}

\RequirePackage{import}
\ifx\HCode\UnDeFiNeD
    \import{\pwd}{index.tex}
\fi


\RequirePackage{slashed}
\usepackage{catchfilebetweentags}

\RequirePackage{geometry}
\RequirePackage{graphicx}
\graphicspath{{\pwd/content/resources}}

\newcommand{\ex}[3][note]{\hyperref[#2-#1]{#3}}

\newcommand{\N}{\mathbb{N}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\C}{\mathbb{C}}
\newcommand{\F}{\mathbb{F}}
\newcommand{\nodiv}{\negthickspace\not |~}

\DeclareMathOperator{\proj}{proj}
\DeclareMathOperator{\inte}{int}

\makeatletter
\newcommand\currentdoc[1]{\edef\@currentlabel{#1}\label{#1}}
\makeatother

\RequirePackage{fancyhdr}
\fancypagestyle{plain}{
    \fancyhf{}
    \fancyfoot[L]{\theauthor,\hspace{1em} \thedate}
    \fancyfoot[R]{\thepage}
    \fancyhead[L]{{\huge\textbf{\thetitle}}\vspace{1em}}
    \fancyhead[R]{\breadcrumb}
  }

\RequirePackage{titling}
\makeatletter
\def\@maketitle{%
  \newpage
  \par
}
\makeatother
\setlength{\headsep}{35pt}
\setlength{\footskip}{70pt}

\author{Bailey Moir}
\date{\today}

\ProcessOptions

