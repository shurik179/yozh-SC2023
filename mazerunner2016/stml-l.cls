%%
%% This is file `stml-l.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% stml-l.dtx 
%% 
%%% ====================================================================
%%% @LaTeX-file{
%%%   filename  = "stml-l.dtx",
%%%   version   = "1.14",
%%%   date      = "2002/12/12",
%%%   time      = "11:27:52 EST",
%%%   checksum  = "17969 714 2145 22610",
%%%   author    = "American Mathematical Society",
%%%   copyright = "Copyright (C) 1998,2001 American Mathematical Society,
%%%                all rights reserved.  Copying of this file is
%%%                authorized only if either:
%%%                (1) you make absolutely no changes to your copy,
%%%                including name; OR
%%%                (2) if you do make changes, you first rename it
%%%                to some other name.",
%%%   address   = "American Mathematical Society,
%%%                Technical Support,
%%%                Publications Technical Group,
%%%                P. O. Box 6248,
%%%                Providence, RI 02940,
%%%                USA",
%%%   telephone = "401-455-4080 or (in the USA and Canada)
%%%                800-321-4AMS (321-4267)",
%%%   FAX       = "401-331-3842",
%%%   email     = "tech-support@ams.org (Internet)",
%%%   codetable = "ISO/ASCII",
%%%   keywords  = "",
%%%   supported = "yes",
%%%   abstract  = "LaTeX documentclass for the AMS book series
%%%                Student Mathematical Library.",
%%%   docstring = "The checksum field above contains a CRC-16
%%%                checksum as the first value, followed by the
%%%                equivalent of the standard UNIX wc (word
%%%                count) utility output of lines, words, and
%%%                characters.  This is produced by Robert
%%%                Solovay's checksum utility.",
%%% }
%%% ====================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{stml-l}[2002/12/12 v1.14 STML Author Class]
\providecommand\@classname{stml-l}
\newcommand\DelayedOption[2]{\@ifclasswith{\@classname}{#1}{#2}{}}
\DeclareOption{theorema}{}
\DeclareOption{theoremb}{}
\let\alt@size\@empty
\DeclareOption{11pt}{%
  \def\alt@size{%
    \def\@mainsize{11}\def\@ptsize{1}%
    \def\@typesizes{%
      \or{6}{7}\or{7}{8}\or{8}{10}\or{9}{11}\or{10}{12}%
      \or{\@xipt}{13.5}% normalsize
      \or{\@xiipt}{14}\or{\@xivpt}{17}\or{\@xviipt}{20}%
      \or{\@xxpt}{24}\or{\@xxvpt}{30}}%
  }%
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{amsbook}}
\ExecuteOptions{theorema}
\ProcessOptions\relax
\LoadClass{amsbook}[1996/10/24]
\parskip 3\p@\relax
\toks@\@xp{\@listi}%
\edef\@listi{\the\toks@ \itemsep1\parskip plus\p@\relax}
\let\@listI\@listi \@listI
\def\labelenumi{(\theenumi)}
\def\@typesizes{%
  \or{5}{6}\or{6}{7}\or{7}{8}\or{8}{10}\or{9}{11}%
  \or{\@xpt}{13}% normalsize
  \or{\@xiipt}{14}\or{\@xivpt}{17}\or{\@xviipt}{20}%
  \or{\@xxpt}{24}\or{\@xxvpt}{30}}
\alt@size

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\@ifundefined{cleardouble@page}{%
  \let\cleardouble@page\cleardoublepage
  \def\cleardoublepage{\clearpage{\pagestyle{empty}\cleardouble@page}}%
}{}
\def\@part[#1]#2{%
  \begingroup \fontsize\@xxpt{22}\selectfont\bfseries
  \parskip\z@skip
  \hsize21pc \raggedright
  \ifnum \c@secnumdepth >-2\relax
     \refstepcounter{part}%
     {\LARGE\normalfont
       \top@par@space{12pc plus-1fil}% cancel \null\vfil done by \part
       \partname\ \thepart\par
     }%
     \bb@par@space{48pt}%
    #2\unskip
    \addcontentsline{toc}{part}{%
      \partname\ \thepart.\protect\enspace\protect\noindent#1}%
  \else
    #2\unskip
    \addcontentsline{toc}{part}{#1}%
  \fi
  \par
  \endgroup
  \thispagestyle{plain}%
  \newpage
  \thispagestyle{empty}}

\def\@spart#1{%
  \begingroup \c@secnumdepth=-2 \@part[#1]{#1}\endgroup
}
\providecommand\bb@space[1]{%
  \skip@#1\advance\skip@-\baselineskip\vskip\skip@
}
\providecommand\bb@par@space[1]{%
  \skip@#1\advance\skip@-\baselineskip
  \advance\skip@-\parskip \vskip\skip@
}
\providecommand\top@par@space[1]{%
  \par
  \ifdim\pagegoal<\maxdimen \else\hbox{}\fi
  \skip@#1\advance\skip@-\topskip
  \advance\skip@-\headsep\advance\skip@-\headheight
  \advance\skip@-\baselineskip
  \advance\skip@-\parskip
  \vskip\skip@
}
\def\chapter{\cleardoublepage\thispagestyle{plain}\global\@topnum\z@
  \@afterindentfalse \secdef\@chapter\@schapter}
\def\chapter@number{%
  \ifnum\c@secnumdepth>\m@ne
    \vskip-\headsep \vskip5pt\relax % depth of top rule
    \vbox{\LARGE\normalfont
      \vbox to6pt{}%
      \hbox{\chaptername\space\thechapter}%
    }%
  \fi
}
\providecommand{\indexintro}{}
\newif\if@index  \@indexfalse
\def\@makechapterhead#1{\global\topskip\normaltopskip
  \begingroup
  \parskip\z@skip
  \vbox to\topskip{%
    \chapter@number
    \vss
  }\penalty\@M
  \fontsize\@xxpt{22}\selectfont\bfseries\hsize 21pc \raggedright
  \top@par@space{9pc}%
  \noindent #1\par \endgroup
  \if@index
    \ifx\@empty\indexintro
      \bb@par@space{6.5pc}%
    \else
      \vspace{2.5pc}%
      \begingroup \small
        \parbox[t]{22.5pc}{\leftskip2.5pc\normalfont\indexintro\par}%
      \endgroup
      \bb@par@space{2.5pc}%
    \fi
  \else
      \@dropfolio
      \bb@par@space{6.5pc}%
  \fi
  \@afterheading
}
\def\@makeschapterhead#1{\begingroup
  \c@secnumdepth\m@ne \@makechapterhead{#1}%
  \endgroup
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\section{\@startsection{section}{1}%
  \z@{-.7\linespacing\@plus-\linespacing}{.5\linespacing}%
  {\large\normalfont\bfseries\hsize24pc \raggedright}}
\def\specialsection{\@startsection{section}{1}%
  \z@{-2\linespacing\@plus-\linespacing}{.5\linespacing}%
  {\Large\normalfont\bfseries\hsize24pc \raggedright}}

\def\subsection{\@startsection{subsection}{2}%
  \z@{.5\linespacing\@plus.7\linespacing}{-.5em}%
  {\normalfont\bfseries}}
\def\subsubsection{\@startsection{subsubsection}{3}%
  \z@\z@{-.5em}%
  {\normalfont\itshape}}

\renewenvironment{xcb}{\par
  \ifdim\lastskip>\z@\vskip-\lastskip\fi
  \penalty-9999
  \vskip18\p@ plus2\p@ \leaders\hrule width\columnwidth\vskip2\p@\relax
  \setcounter{enumi}{8}% "8" or "viii"
  \settowidth{\leftmargini}{\labelenumi\hskip\labelsep}%
  \setcounter{enumii}{13}% "m" or "xiii"
  \settowidth{\leftmarginii}{\labelenumii\hskip\labelsep}%
  \@startsection{section}% counter name; ignored because of the * below
  {1}% sectioning level
  {\z@}% indent to the left of the title
  {-1sp}% vertical space above (faked, see leaders above)
  {20\p@}% Space below
  {\Large\bfseries}% The font of the title
  *% always unnumbered
}{%
  \par
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\th@plain{%
  \let\thm@indent\noindent
  \thm@headfont{\bfseries}%
  \let\thmhead\thmhead@plain \let\swappedhead\swappedhead@plain
  \thm@preskip.5\baselineskip\@plus.2\baselineskip
                                    \@minus.2\baselineskip
  \thm@postskip\thm@preskip
  \itshape
}%
\def\th@definition{%
  \let\thm@indent\noindent
  \thm@headfont{\bfseries}%
  \let\thmhead\thmhead@plain \let\swappedhead\swappedhead@plain
  \thm@preskip.5\baselineskip\@plus.2\baselineskip
                                    \@minus.2\baselineskip
  \thm@postskip\thm@preskip
  \upshape
}%
\def\th@remark{%
  \let\thm@indent\noindent
  \thm@headfont{\bfseries}% heading font small caps
  \let\thmhead\thmhead@plain \let\swappedhead\swappedhead@plain
  \thm@preskip.5\baselineskip\@plus.2\baselineskip
                                    \@minus.2\baselineskip
  \thm@postskip\thm@preskip
  \upshape
}%
\renewenvironment{proof}[1][\proofname]{\par \normalfont
  \pushQED{\qed}\relax
  \topsep6\p@\@plus6\p@ \trivlist \itemindent\z@
  \item[\hskip\labelsep\bfseries
    #1\@addpunct{.}]\ignorespaces
}{%
  \popQED
  \endtrivlist \@endpefalse
}%
\@ifundefined{pushQED}{%
  \let\pushQED\@gobble
  \def\popQED{\qed}%
}{}
\@ifundefined{swappedhead@plain}{%
  \let\swappedhead@plain=\swappedhead
}{}
\DelayedOption{theoremb}{%
  \def\th@plain{%
    \let\thm@indent\indent
    \thm@headfont{\scshape}%
    \let\thmhead\thmhead@plain \let\swappedhead\swappedhead@plain
    \thm@preskip.5\baselineskip\@plus.2\baselineskip
                                      \@minus.2\baselineskip
    \thm@postskip\thm@preskip
    \itshape
  }%
  %
  \def\th@definition{%
    \let\thm@indent\indent
    \thm@headfont{\scshape}%
    \let\thmhead\thmhead@plain \let\swappedhead\swappedhead@plain
    \thm@preskip.5\baselineskip\@plus.2\baselineskip
                                      \@minus.2\baselineskip
    \thm@postskip\thm@preskip
    \upshape
  }%
  %
  \def\th@remark{%
    \let\thm@indent\indent
    \thm@headfont{\itshape}%
    \let\thmhead\thmhead@plain \let\swappedhead\swappedhead@plain
    \thm@preskip.5\baselineskip\@plus.2\baselineskip
                                      \@minus.2\baselineskip
    \thm@postskip\thm@preskip
    \upshape
  }%
  %
  \renewenvironment{proof}[1][\proofname]{\par \normalfont
    \topsep6\p@\@plus6\p@ \trivlist \itemindent\normalparindent
    \item[\hskip\labelsep\itshape
      #1\@addpunct{.}]\ignorespaces
  }{%
    \qed\endtrivlist
  }%
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewenvironment{thebibliography}[1]{%
  \@xp\chapter\@xp*\@xp{\bibname}%
  \normalfont\smaller \labelsep .5em\relax
  \renewcommand\theenumiv{\arabic{enumiv}}\let\p@enumiv\@empty
  \list{\@biblabel{\theenumiv}}{\settowidth\labelwidth{\@biblabel{#1}}%
    \leftmargin\labelwidth \advance\leftmargin\labelsep
    \itemsep3\p@ plus\p@ minus\p@
    \usecounter{enumiv}}%
  \sloppy \clubpenalty\@M \widowpenalty\clubpenalty
  \sfcode`\.=\@m
}{%
  \def\@noitemerr{\@latex@warning{Empty `thebibliography' environment}}%
  \endlist
}
\def\indexchap#1{%
  \twocolumn[%
    \vskip-\topskip\vskip-\baselineskip % compensate for twocolumn fudging
    \c@secnumdepth\m@ne
    \@indextrue
    \@makechapterhead{#1}]%
  \@dropfolio
}
\def\symbolslistname{List of Symbols}
\newenvironment{symbolslist}{%
  \@restonecoltrue\if@twocolumn\@restonecolfalse\fi
  \columnseprule\z@ \columnsep 35\p@
  \let\@makeschapterhead\indexchap
  \@xp\chapter\@xp*\@xp{\symbolslistname}%
  \thispagestyle{plain}%
  \let\item\@idxitem
  \parindent\z@ \parskip4\p@\@plus.3\p@\relax
  \normalsize
}{%
  \if@restonecol\onecolumn\else\clearpage\fi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\ps@headings{\ps@empty
  \def\@evenhead{\rh@underline{\unskip
    \rlap{\thepage}\hfil \textbf{\leftmark{}{}}}}%
  \def\@oddhead{\rh@underline{\unskip
    \textbf{\rightmark{}{}}\hfil \llap{\thepage}}}%
  \let\@mkboth\markboth
  \def\partmark{\@secmark\markboth\partrunhead\partname}%
  \def\chaptermark{%
    \@secmark\markboth\chapterrunhead{}}%
  \def\sectionmark{%
    \@secmark\markright\sectionrunhead\sectionname}%
}
\def\partrunhead#1#2#3{%
  \@ifnotempty{#2}{{\@ifnotempty{#1}{#1 }#2}\@ifnotempty{#3}{. }}#3}
\let\chapterrunhead\partrunhead
\let\sectionrunhead\partrunhead
\def\ps@plain{\ps@empty
  \def\@oddhead{\rh@underline[2pt]{%
    \vrule width\z@ height\headheight}}%
  \let\@evenhead\@oddhead
}
\newcommand\rh@underline[2][.5\p@]{\vbox to\headheight{%
  \hbox to\textwidth{\hskip\z@\@plus\textwidth\relax#2}%
  \baselineskip5\p@\relax
  \hbox to\textwidth{\leaders \hrule\@height#1\hfil}%
  \vss
}}
\headheight=7.5pt % approx height of 10pt cap letter
\headsep2pc \advance\headsep -\topskip
\newinsert\copyins
\skip\copyins=2pc
\count\copyins=999 % magnification factor, 1000 = 100%
\dimen\copyins=.5\textheight % maximum allowed per page
\def\@dropfolio{%
  \ifnum\count\copyins<\@m
    \global\count\copyins=\@m % reset to 999 in output routine
    \insert\copyins{\@parboxrestore
      \hsize\textwidth \raggedleft \normalfont\normalsize \everypar{}%
      \vss\nointerlineskip
      \vbox{\vskip-\skip\copyins
        \baselineskip=11\p@\relax % instead of 13.5
        \ialign{\hfil##\cr
          \vrule width\z@ height\skip\copyins\relax
          \rule{18\p@}{2\p@}\cr\thepage\cr}}%
    }%
  \fi
}
\def\@combinefloats{%
  \ifx \@toplist\@empty \else \@cflt \fi
  \ifx \@botlist\@empty \else \@cflb \fi
  \ifvoid\copyins \else \@cflci \fi
}
\def\@cflci{%
  \setbox\@outputbox\vbox{%
    \unvbox\@outputbox
    \vskip\skip\copyins
    \if@twocolumn \else \vskip\z@ plus\p@ \fi
    \hbox to\columnwidth{%
      \hss\vbox to\z@{\vss
        \if@twocolumn
          \if@firstcolumn \else \unvbox\copyins \fi
        \else
          \unvbox\copyins
        \fi
        }}}%
  \if@twocolumn \if@firstcolumn
    \insert\copyins{\unvbox\copyins}%
  \fi\fi
  \global\count\copyins=999 \relax
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\@captionheadfont{\bfseries}
\def\@captionfont{\normalfont\Small}
\long\def\@footnotetext#1{\insert\footins{%
  \normalfont\footnotesize
  \interlinepenalty\interfootnotelinepenalty
  \splittopskip\footnotesep \splitmaxdepth \dp\strutbox
  \floatingpenalty\@MM \hsize\columnwidth
  \@parboxrestore \parindent\normalparindent \sloppy
  \edef\@currentlabel{\p@footnote\@thefnmark}%
  \@makefntext{\rule\z@\footnotesep\ignorespaces#1\unskip\strut\par}}}
\def\footnotesize{\SMALL}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\l@part#1#2{\@tocline{-1}{12pt plus2pt}{0pt}{}{\bfseries}{#1}{}}
\def\l@section{\@tocline{1}{3\p@\@plus\p@\@minus\p@}{1pc}{}{}}
\renewcommand{\tocsection}[3]{%
  \indentlabel{\@ifnotempty{#2}{\S#2.\quad}}#3}
\pagestyle{headings}
\textheight=42pc \textwidth=25pc \calclayout
\endinput %
\endinput
%%
%% End of file `stml-l.cls'.
