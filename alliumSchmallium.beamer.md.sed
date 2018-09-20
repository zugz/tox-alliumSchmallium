s/^::://
s/^!newop\s\+\(\w*\)\s*$/\\providecommand{\\\1}{\\operatorname{\1}}/
s/^!newbb\s\+\(\w*\)\s*$/\\providecommand{\\\1}{\\mathbb{\1}}/
s/^!newcal\s\+\(\w*\)\s*$/\\providecommand{\\\1}{\\mathcal{\1}}/
s/^!newfrak\s\+\(\w*\)\s*$/\\providecommand{\\\1}{\\mathfrak{\1}}/
t end

s/\\"\([a-zA-Z]\+\)/\\operatorname{\1}/g
s/\\|\([a-zA-Z]\+\)/\\mathbb{\1}/g
s/-\+>>/\\twoheadrightarrow /g
s/|-\+>/\\mapsto /g
s/(-\+>/\\ensuremath{\\lhook\\joinrel\\relbar\\joinrel\\rightarrow}/g
s/-\+~=-\+>/\\xrightarrow{\\cong}/g
s/-\+~-\+>/\\xrightarrow{\\sim}/g
s/-\+==-\+>/\\xrightarrow{\\equiv}/g
s/-\+\/-*>/\\not\\rightarrow /g
s/<--\+>/\\longleftrightarrow /g
s/--\+>/\\rightarrow /g
s/<--\+/\\leftarrow /g
s/<==\+>/\\Longleftrightarrow /g
s/==\+>/\\Rightarrow /g
s/<==\+/\\Leftarrow /g
s/<~/\\prec /g
s/~>/\\succ /g
s/\/\/\\\\/\\bigwedge/g
s/\\\\\/\//\\bigvee/g
s/\(\s\|^\)\/\\\(\s\|$\)/\1\\wedge\2/g
s/\(\s\|^\)\\\/\(\s\|$\)/\1\\vee\2/g
s/<=/\\leq /g
s/>=/\\geq /g
s/<\/=/\\not\\leq /g
s/>\/=/\\not\\geq /g
s/<!=/\\lneq /g
s/>!=/\\gneq /g
s/(-\(\s\|$\)/\\in\1/g
s/\(\s\|$\)-)/\1\\ni/g
s/(\/-\(\s\|$\)/\\notin\1/g
s/(=/\\subseteq /g
s/(\/=/\\not\\subseteq /g
s/(!=/\\subsetneq /g
s/\(\s\|^\)=)\(\s\|$\)/\1\\supseteq\2/g
s/\(\s\|^\)\/=)\(\s\|$\)/\1\\not\\supseteq\2/g
s/\(\s\|^\)!=)\(\s\|$\)/\1\\supsetneq\2/g
s/\(\s\|^\))=\(\s\|$\)/\1\\supseteq\2/g
s/\(\s\|^\)\/)=\(\s\|$\)/\1\\not\\supseteq\2/g
s/\(\s\|^\))!=\(\s\|$\)/\1\\supsetneq\2/g
s/|=/\\vDash /g
s/|\/=/\\not\\Dashv /g
s/!=/\\neq /g
s/\/=/\\neq /g
s/{}/\\emptyset /g
s/\\\\\\/\\%%\\%%/g
s/\\%%\\%%/\\\\/g
s/==/\\equiv /g
s/~=/\\cong /g
s/|-/\\vdash /g
s/-|/\\dashv /g
s/=|/\\Dashv /g
s/\\|\//\\ind /g
s/\\+\//\\nind /g
s/\(\s\|^\)(x)\(\s\|$\)/\1\\otimes\2/g
s/\(\s\|^\)(+)\(\s\|$\)/\1\\oplus\2/g
s/\(\s\|^\)(x)_/\1\\bigotimes/g
s/\(\s\|^\)(+)_/\1\\bigoplus_/g
s/ o / \\circ /g
s/||/\\|/g
#s/ || /\\;\\|\\;/g
s/-\~-/-\$\\sim\$-/g
s/\~\~/\\approx/g
s/|_/\\restriction_/g
s/\.\.\./\\ldots /g
s/\(i\.e\.\)\(\s\|$\)/\1\\ /g
s/\(e\.g\.\)\(\s\|$\)/\1\\ /g
s/\(c\.f\.\)\(\s\|$\)/\1\\ /g
s/\(etc\.\)\(\s\|$\)/\1\\ /g

s/\\|{\(\s\|$\)/\\left\\lVert{/g
s/\(\s\|^\)}\\|/}\\right\\rVert/g
s/\([|(<]\){\(\s\|$\)/\\left\1{/g
s/\(\s\|^\)}\([|)>]\)/}\\right\2/g

#s/\(\s\)|\(\s\|$\)/\1\\;|\\;\2/g

:end
