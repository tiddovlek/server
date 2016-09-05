@echo off
COLOR 09
cls
:menu
title Runserver + Compiler version 1.2
echo Please choose an option below to do that function.
echo Keep posted on the Moparscape Tutorials section for
echo any updates that I post.
echo.
echo c - Compile your server.
echo r - To run your server.
echo e - To exit out of the program.
echo.
echo.
set /p compile=Option: 
if %compile%==c goto compile
if %compile%==C goto compile
if %compile%==r goto run
if %compile%==R goto run
if %compile%==e goto end
if %compile%==E goto end
if %compile#==* goto error
goto error
:compile
cls
title Compiler
if defined javac (goto compile2) else (goto checkjavac)
:compile2
if exist *.java (goto compile3) else (goto compileerror)
:compile3
%javac% -cp . *.java
pause
cls
goto menu
:compileerror
cls
echo You need to have Java files for this compiler to compile.
pause
cls
goto menu
:run
cls
title Runserver
if exist .\server.class (goto run2) else (goto servererror)
:run2
set java=java -Xmx1024m -cp .;./jython.jar;./MySql/mysql-connector-java-3.0.17-ga-bin.jar
cls
goto run3
:run3
%java% server
pause
cls
goto menu
:servererror
cls
title Error
echo You do not have a Server.class. Make sure that you have used the
echo compiler with your server BEFORE you try running it.
pause
cls
goto menu
:error
cls
title Error
echo Invalid command. Please make sure the commands you type
echo in are correct.
pause
cls
goto menu
:end
cls
exit
:checkjavac
if exist "%programfiles%\Java\jdk1.7.0_40\bin\javac.exe" (goto setjavac) else (goto checkjavac2)
:checkjavac2
if exist "%programfiles%\Java\jdk1.7.0_40\bin\javac.exe" (goto setjavac2) else (goto checkjavac3)
:checkjavac3
if exist "%programfiles%\Java\jdk1.7.0_40\bin\javac.exe" (goto setjavac3) else (goto checkjavac4)
:checkjavac4
if exist "%programfiles%\Java\jdk1.7.0_40\bin\javac.exe" (goto setjavac4) else (goto checkjavac5)
:checkjavac5
if exist "%programfiles%\Java\jdk1.7.0_40\bin\javac.exe" (goto setjavac5) else (goto checkjavac6)
:checkjavac6
if exist "%programfiles%\Java\jdk1.7.0\bin\javac.exe" (goto setjavac6) else (goto checkjavac7)
:checkjavac7
if exist "%programfiles%\Java\jdk1.7.0\bin\javac.exe" (goto setjavac7) else (goto checkjavac8)
:checkjavac8
if exist "%programfiles%\Java\jdk1.7.0_40\bin\javac.exe" (goto setjavac8) else (goto checkjavac9)
:checkjavac9
if exist "%programfiles%\Java\jdk1.7.0_40\bin\javac.exe" (goto setjavac9) else (goto checkjavac10)
:checkjavac10
if exist "%programfiles%\Java\jdk1.7.0_40\bin\javac.exe" (goto setjavac10) else (goto checkjavac11)
:checkjavac11
if exist "%programfiles%\Java\jdk1.7.0_40\bin\javac.exe" (goto setjavac11) else (goto checkjavac12)
:checkjavac12
if exist "%programfiles%\Java\jdk1.7.0_40\bin\javac.exe" (goto setjavac12) else (goto javacerror)
:setjavac
set javac="%programfiles%\Java\jdk1.7.0_40\bin\javac.exe"
goto compile2
:setjavac2
set javac="%programfiles%\Java\jdk1.7.0_40\bin\javac.exe"
goto compile2
:setjavac3
set javac="%programfiles%\Java\jdk1.7.0_40\bin\javac.exe"
goto compile2
:setjavac4
set javac="%programfiles%\Java\jdk1.7.0_40\bin\javac.exe"
goto compile2
:setjavac5
set javac="%programfiles%\Java\jdk1.7.0_40\bin\javac.exe"
goto compile2
:setjavac6
set javac="%programfiles%\Java\jdk1.7.0\bin\javac.exe"
goto compile2
:setjavac7
set javac="%programfiles%\Java\jdk1.7.0\bin\javac.exe"
goto compile2
:setjavac8
set javac="%programfiles%\Java\jdk1.7.0_40\bin\javac.exe"
goto compile2
:setjavac9
set javac="%programfiles%\Java\jdk1.7.0_40\bin\javac.exe"
goto compile2
:setjavac10
set javac="%programfiles%\Java\jdk1.7.0_40\bin\javac.exe"
goto compile2
:setjavac11
set javac="%programfiles%\Java\jdk1.7.0_40\bin\javac.exe"
goto compile2
:setjavac12
set javac="%programfiles%\Java\jdk1.7.0_40\bin\javac.exe"
goto compile2
:javacerror
cls
title Error
echo You do not have JDK 5.0 or JDK 6.0. Go to Mod Taharok's tutorial
echo on the Moparscape Tuturoials section for a direct link to download
echo the newest JDK Update.
pause
cls
goto menu

