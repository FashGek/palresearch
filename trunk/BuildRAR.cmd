rem ɾ�������ļ�
del /s /q *.rar *.bak
del /s /q /a:-RSHA thumbs.db

rem ����Map���
cd MapEditor
move gop ..\bak
move map ..\bak
move *.mkf ..\bak

rem �Ƴ�script���
cd ..\PalScript
del /q *.*.txt original.txt *.bin sss.mkf m.msg word.dat
move sss0R ..\bak

cd ..
move bak ..

rem �Ͻ����ȥ~
path %path%;"D:\Program Files\WinRAR"
rar a -m5 -s -r research.rar *.*
pause

move ..\bak

rem ��ԭmap���
cd MapEditor
move ..\bak\gop
move ..\bak\map
move ..\bak\pat.mkf

rem ������script
cd ..\Palscript
call makeall.cmd
move ..\bak\sss0R