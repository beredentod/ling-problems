%The MIT License (MIT)
%
%Copyright (c) 2020 Michał Boroń
%
%Permission is hereby granted, free of charge, to any person obtaining a copy
%of this software and associated documentation files (the "Software"), to deal
%in the Software without restriction, including without limitation the rights
%to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
%copies of the Software, and to permit persons to whom the Software is
%furnished to do so, subject to the following conditions:
%
%The above copyright notice and this permission notice shall be included in all
%copies or substantial portions of the Software.
%
%THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
%IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
%FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
%AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
%LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
%OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
%SOFTWARE.

% TeX class providing formatting linguistic problems for linguistic contests or single problems
% The format is based on the format used at the International Linguistics Olympiad


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lingproblem}[2020/05/01]

\date{}
\author{}

% name of the constest
\newcommand{\contest@}{NO CONTEST}
\newcommand{\setcontest}[1]{\renewcommand{\contest@}{#1}}

% subtitle under the name of the contest
\newcommand{\subtitle@}{}
\newcommand{\setsubtitle}[1]{\renewcommand{\subtitle@}{#1}}

% how the title of each problem should be printed
\newcommand{\problemtitle}{}

% date setting
\newcommand{\setdate}[1]{\date{#1}}


% print contest title
\newcommand{\makecontesttitle}{%
\title{\contest@\\ {\large \subtitle@} \vspace{-1.5em}}%
\maketitle%
}%


% settings for a single problem
\newcommand{\singleSettings}{%
\pagenumbering{gobble}%
\renewcommand{\problemtitle}{\title{\textbf{\title@}\vspace{-3em}} \maketitle}%
\author{}
}%

% settings for the contest mode
\newcommand{\contestSettings}{%
\author{}
\renewcommand{\problemtitle}{\section*{\large \title@}}%
}%


\DeclareOption{single}{\singleSettings}
\DeclareOption{contest}{\contestSettings}
\DeclareOption*{\singleSettings}
\ProcessOptions\relax

\LoadClass[a4paper,12pt]{article}

\RequirePackage[english]{babel}
\RequirePackage[legalpaper, portrait, margin=1in]{geometry}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{titling}
\RequirePackage{gb4e}
\RequirePackage{amsmath}
\RequirePackage{enumitem}
\RequirePackage{hyperref}
\RequirePackage{bookmark}
\RequirePackage{fancyhdr}


% hyperlinks colors
\hypersetup{
    colorlinks=false,
    linkcolor=blue,
    filecolor=magenta,      
    urlcolor=cyan,
    %bookmarks=true,
}

% for the danger symbol
\newcommand*{\TakeFourierOrnament}[1]{{%
\fontencoding{U}\fontfamily{futs}\selectfont\char#1}}
\newcommand*{\danger}{\TakeFourierOrnament{66}}

% removes page numbering at the bottom of the page
\setlength{\droptitle}{-7em}


%\fancyhead{}

%\fancyhead[L]{\contest@}
%\fancyhead[R]{\thepage}

%\pagestyle{fancy}


% add contest info
\newenvironment{contestinfo}[1]{

\centering \textbf{#1}
\flushleft

}{\par \noindent\makebox[\linewidth]{\rule{\textwidth}{0.4pt}}}


% new problem
\newenvironment{problem}[2]{

% assign the problem name and the author
\newcommand{\title@}{#1}
\newcommand{\author@}{#2}

\problemtitle

% add language info
\newenvironment{langinfo}
{\noindent \danger \: }
{\hspace*{\fill} \text{---\textit{\author@}}}
{}

% add tasks
\newenvironment{tasks}
{\begin{enumerate}[label={\textbf{(\alph*)}}]}
{\end{enumerate}}
\newcommand{\task}[1]{\item ##1}

}{}

