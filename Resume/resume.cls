\RequirePackage{pst-pdf}%! Class = CLASS_NAME
%! Author = WilliamLao
%! Date = 2025/3/15

\NeedsTeXFormat{LaTeX2e}
%\ProvidesPackage{CLASS_NAME}[WilliamLao's Document Class]
\ProvidesClass{resume}[[WilliamLao's Document Class]

\newif\if@Chinese
\newif\if@English

\DeclareOption{zh}{\@Chinesetrue\@Eniglishfalse}
\DeclareOption{en}{\@Chinesefalse\@Eniglishtrue}

\DeclareOption*{
    \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

\newcommand{\name}[1]{
    \huge {\textbf{#1}}
}

\newcommand{\job}[1]{
    \normalsize {\textbf{申请职位:}} #1
}

\newcommand{\addr}[3]{
    \normalsize
    \raisebox{-3pt}{\includegraphics[height=#1]{#2}} #3
}

