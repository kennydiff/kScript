@echo off

if "%1" neq "1" (
>"%temp%\tmp.vbs" echo set WshShell = WScript.CreateObject^(^"WScript.Shell^"^)
>>"%temp%\tmp.vbs" echo WshShell.Run chr^(34^) ^& %0 ^& chr^(34^) ^& ^" 1^",0
start /d "%temp%" tmp.vbs 
exit
) 

rem ͬ�������ļ������ݵ�������
start /d "d:\Program Files\FastCopy" FastCopy.exe /cmd=sync /auto_close "E:\ken\repo\*" /to="\\192.168.12.104\16_66$\"

rem ���ϴ�ͬ�� , ��������ճ���Сͬ��

rem Сͬ��
rem start /d "d:\Program Files\FastCopy" FastCopy.exe /cmd=sync /auto_close "E:\Kenny\Repositories\workspace\*" /to="\\192.168.12.104\16_66\workspace\"