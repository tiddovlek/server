@echo off
title Running...
java -Xmx512m -cp .;./jython.jar;./MySql/mysql-connector-java-3.0.08-ga-bin.jar server
exit