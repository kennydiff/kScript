@echo off

rem if "%1" neq "1" (
rem >"%temp%\tmp.vbs" echo set WshShell = WScript.CreateObject^(^"WScript.Shell^"^)
rem >>"%temp%\tmp.vbs" echo WshShell.Run chr^(34^) ^& %0 ^& chr^(34^) ^& ^" 1^",0
rem start /d "%temp%" tmp.vbs
rem exit
rem )

Rundll32.exe user32.dll,LockWorkStation

D:
cd "D:\Program Files (x86)\VMware\VMware Workstation\"
vmrun.exe -T ws start "D:\vm\macOS Mojave Final APFS by Geekrar.com\macOS 10.14.vmx" nogui


rem �������Ա�������ping5��,��䡺�ϻ�����2�����ã� 1.ȷ��chrome������2TAB�Ĵ���;2.win7����������̫��,���޴��ӳ�,QQ��Evernote���޷����� , ����timeout
rem ping 192.168.16.254 -n 1 >nul  //���� timeoutָ�� , 26�����ʧ�ܣ�ʱ�䲻�� (�ƻ���������1��)
timeout /t 27 /nobreak


C:
cd "C:\Program Files (x86)\Google\Chrome\Application\"
start chrome.exe "https://www.google.com/calendar/"
rem start chrome.exe "https://tower.im/projects/dc6236d6b31044a28c1a3fad741ee7b2/"

D:

rem cd "D:\Program Files (x86)\Tencent\WeChat\"
rem start WeChat.exe

cd "D:\Program Files (x86)\Tencent\TIM\Bin\"
start QQScLauncher.exe

cd "D:\Program Files (x86)\Evernote\Evernote\"
start Evernote.exe /Task:SyncDatabase

rem ͬ�������ļ������ݵ�������
rem cd "d:\Program Files\FastCopy"
rem start FastCopy.exe /cmd=sync /auto_close "E:\Kenny\Repositories\*" /to="\\192.168.12.104\16_66\"  //��ͬ�� , ��һ�����ճ���Сͬ��
rem start FastCopy.exe /cmd=sync /auto_close "E:\Kenny\Repositories\workspace\*" /to="\\192.168.12.104\16_66\workspace\"

exit