del *.SchDocPreview /s
del *.schPreview /s
del *.PcbDocPreview /s 

del *.PrjPCBStructure /s 
::允许删除工程结构文件
del *.Cam /s
del *.drc /s
del *.LOG /s 
::允许删除日志文件
del *.htm /s 
del *.html /s 
del *.OutJob /s 
del Documents/*.SchDocPreview/s
del Documents/*.PcbDocPreview/s
for /r /d %%b in (__Previews) do rd "%%b" /s /q 
::删除当前目录下的所有__Previews文件夹（预览文件）
for /r /d %%b in (History) do rd "%%b" /s /q 
::删除当前目录下的所有History文件夹
for /r /d %%b in (Project?Logs?for*) do rd "%%b" /s /q 
::删除当前目录下的所有带字符串Project Logs for的文件夹
for /r /d %%b in (Project?Outputs?for*) do rd "%%b" /s /q   
::删除当前目录下的所有带字符串Project Outputs for的文件夹
exit
::说明:rd指令用于删除文件夹
::del指令用于删除文件
::可自行编辑来快捷批处理删除。
