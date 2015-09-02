UrlDownloadToFile, https://raw.githubusercontent.com/sftblw/txt_replacer_common.ahk/master/txt_replacer_common.ahk, %A_ScriptDir%/txt_replacer_common_temp.ahk
if ErrorLevel {
	FileDelete, %A_ScriptDir%/txt_replacer_common_temp.ahk
	MsgBox, 'Couldn't download.'
} else {
	FileEncoding, UTF-8

	; 줄바꿈을 해당 OS 식으로 바꾸기 위해 읽었다 다시 씀
	FileRead, fileTempVar, %A_ScriptDir%/txt_replacer_common_temp.ahk
	FileDelete, %A_ScriptDir%/txt_replacer_common_temp.ahk
	FileAppend, %fileTempVar%, %A_ScriptDir%/txt_replacer_common_temp.ahk

	; 이동, 원본삭제
	FileDelete, %A_ScriptDir%/txt_replacer_common.ahk
	FileCreateDir, C:/ahk_scripts
	FileMove, %A_ScriptDir%/txt_replacer_common_temp.ahk, C:/ahk_scripts/txt_replacer_common.ahk, 1
	FileDelete, %A_ScriptDir%/txt_replacer_common_temp.ahk

	; 다운로드 받은 경로 보여주기
	run explorer C:\ahk_scripts\

	; 시작 프로그램에 등록
	; http://stackoverflow.com/a/17438532
  ; run schtasks /delete /tn "txt_replacer_common_ahk"
	run schtasks ""/create /ru %username% /tn "txt_replacer_common_ahk" /tr C:\ahk_scripts\txt_replacer_common.ahk /sc onlogon /rl highest /it""
  ; run %comspec% ""schtasks /search /tn "txt_replacer_common_ahk""" ; 추가된 태스크 보여주기 (미동작)

	; 실행하기
	run autohotkey "C:\ahk_scripts\txt_replacer_common.ahk"

	; 설치완료
	MsgBox, Succesfully installed.
}
return
