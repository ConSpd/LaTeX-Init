#!/usr/bin/env bash
cp -r /Users/conspd/Software/LaTeX/Images .
cp /Users/conspd/Software/LaTeX/front_page.tex .
touch main.tex
touch references.bib
echo "\input{/Users/conspd/Software/LaTeX/config}
\begin{document}
\input{front_page}
\input{/Users/conspd/Software/LaTeX/table}
% ... WRITE TEXT HERE ...
\bibliographystyle{IEEEtran}
\nocite{*}\newpage
\renewcommand{\refname}{Αναφορές}
{\footnotesize \bibliography{references}}
\end{document}" >> main.tex
open -a /Applications/texmaker.app main.tex
