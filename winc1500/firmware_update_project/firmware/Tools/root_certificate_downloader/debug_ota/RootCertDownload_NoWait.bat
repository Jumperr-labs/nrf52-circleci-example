@ECHO off
@TITLE	Root Certificate Downloader
setlocal EnableDelayedExpansion
set /a c=0
set seq=
for %%X in (..\binary\*.cer) do (
	set /a c+=1
	@set seq=!seq! %%X
)

root_certificate_downloader -n %c% %seq% -no_wait -port 0 -e