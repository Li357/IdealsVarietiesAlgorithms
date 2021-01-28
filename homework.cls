\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}

\LoadClass{article}
\RequirePackage{fancyhdr}
\RequirePackage{datetime}
\RequirePackage[a4paper,left=2cm,right=2cm,top=2cm,bottom=2cm]{geometry}

\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{titlesec}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions{\relax}

\titleformat*{\section}{\Large\bfseries}
\titleformat*{\subsection}{\large\bfseries}
\titleformat*{\subsubsection}{\normalsize\bfseries}
\titleformat*{\paragraph}{\normalsize\bfseries}
\titleformat*{\subparagraph}{\normalsize\bfseries}

\newdateformat{monthyeardate}{\monthname[\THEMONTH] \THEYEAR}

\newcommand{\@course}{Course}
\newcommand{\course}[1]{\renewcommand{\@course}{#1}}
\title{Homework}
\author{Name}
\date{\monthyeardate\today}

\pagestyle{fancy}
\lhead{\@course}
\chead{\@title}
\rhead{\@author}
\cfoot{\thepage}

\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}

\setlength{\parindent}{0pt}

\renewcommand{\maketitle}{{
  \centering
  \thispagestyle{empty}
  \LARGE{\textbf{\@course: \@title}} \\
  \Large{\@date} \\
  \Large{\@author} \\
}}