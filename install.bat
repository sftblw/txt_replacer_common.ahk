@echo off

REM Yes, No @ Batch
REM https://answers.yahoo.com/question/index?qid=20081005123533AALLIPA

ECHO It will install Autohotkey from official website sliently,
ECHO either you have one or not.
SET /P ANSWER=Install Anyway? (Y/N)
if /i {%ANSWER%}=={y} (goto :yes)
if /i {%ANSWER%}=={yes} (goto :yes)
if /i {%ANSWER%}=={n} (goto :no)
if /i {%ANSWER%}=={no} (goto :no)
goto :no 
:yes



:no