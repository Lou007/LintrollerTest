Installation Guide





Table of Contents
1	Introduction	3
1.1	Purpose	3
1.2 How does Lint Roller work
2	Installation Manual	4



1 Introduction
1.1 Purpose
This document is to serve as a guide for using Lint Roller and also includes installation instructions.

	
1.2 How does Lint Roller Work?

Lint Roller works by using a library of C/C++ function names maintained by the user in an spreadsheet. 


Lint Roller then takes the source code text, and matches the source code text against those names, while ignoring text inside comments and strings (except for Lint Roller directives). Lint Roller also knows about gettext (a common library for internationalized programs), and will treat constant strings passed through gettext as though they were constant strings; this reduces the number of false hits in internationalized programs.

Lint Roller produces a list of “hits” (potential security flaws), sorted by risk; by default the riskiest hits are shown first. This risk level depends not only on the function, but on the values of the parameters of the function. For example, constant strings are often less risky than fully variable strings in many contexts. In some cases, Lint Roller may be able to determine that the construct isn’t risky at all, reducing false positives.

Lint Roller gives better information - and better prioritization - than simply running “grep” on the source code. After all, it knows to ignore comments and the insides of strings, and it will also examine parameters to estimate risk levels. 


2 Installation Manual
To install Lint Roller, you can follow the following steps:
a. From a terminal, go into the location of attached folder 
b. run 'sh installer.sh' on the attached installer.sh file
c. copy the git hook 'pre-push' into your the .git hooks folder in your staged directory: .git->hooks




NB: To change functionality, enter lintroller from standard directory and change functionality from top of file to 1 or 0
