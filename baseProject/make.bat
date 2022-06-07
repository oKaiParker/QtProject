@ECHO OFF
@ECHO Begin geneate VC project files
set QMAKESPEC=win32-msvc2008
qmake -tp vc -r
@ECHO End geneate VC project files
@ECHO --------------------------------------
set choice=n
set /p choice=Do you want to open main.sln(y/n,default to n)?
IF %choice% == y (main.sln) ELSE (ECHO Do nothing!)

