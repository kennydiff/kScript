@echo off

if "%1" neq "1" (
>"%temp%\tmp.vbs" echo set WshShell = WScript.CreateObject^(^"WScript.Shell^"^)
>>"%temp%\tmp.vbs" echo WshShell.Run chr^(34^) ^& %0 ^& chr^(34^) ^& ^" 1^",0
start /d "%temp%" tmp.vbs 
exit
) 

rem ͬ�������ļ������ݵ�������
rem start /d "d:\Program Files\FastCopy" FastCopy.exe /cmd=sync /auto_close "E:\Kenny\Repositories\*" /to="\\192.168.12.104\16_66\"  //��ͬ�� , ��һ�����ճ���Сͬ��
rem Сͬ�� /w�����Ǳ�ʾ�ȴ���ȫִ������һ��֮���ִ�к����SHUTDOWN
start /w /d "d:\Program Files\FastCopy" FastCopy.exe /cmd=sync /auto_close "E:\Kenny\Repositories\workspace\*" /to="\\192.168.12.104\16_66\workspace\"

shutdown.exe -s -f -t 0