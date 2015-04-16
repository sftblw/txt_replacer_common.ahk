/*
	txt_replacer_common.ahk
	rev.pub2

	# 설치

	http://ahkscript.org/ , 설치 후 이 파일을 더블클릭해서 실행


	# 기본 사용법

	## 기초 사용법

	두 가지 케이스가 있습니다.

	- 입력하면 자동으로 변환
	    - 예) stsun → 츤♪ 츤♪ 데~레 츤♪ 데~레 츤♪ 츤♪
	- 입력 후 탭 누르면 변환
		- 예) stotono{tab} →
			.
			　　｜그　　｜당
			　　｜녀｜그｜신
			｜사｜의｜녀｜과
			｜랑｜の｜와｜と
			｜恋　　｜と

	첫 번째 경우를 회피하려면, 분리해서 쓴 뒤 삭제 등을 이용하면 됩니다.

	stsu{space}n → 스페이스를 삭제

	## 단축 문자열 읽는 법

	:*:단축문자열::자동완성결과 꼴입니다.

	- 단축 문자열 끝에 `t가 있는 경우 탭을 눌러 자동으로 완성하는 경우입니다.
	- 단축 문자열만 있는 경우 입력하면 바로 그 문자열로 교체됩니다.

	## 관리 키워드

	입력하면 자동으로 변환하는 케이스입니다.
	edithotstring : 이 스크립트 편집창을 띄웁니다.
	openhotstringfolder : 이 스크립트가 있는 폴더를 엽니다.
	reloadhotstring : 이 스크립트를 새로고침합니다.



	# 그 외


	## 이름짓기에 관해

	대부분의 자동변환 키워드는 s로 시작하는데, 이는 special을 뜻합니다. 필요한 경우 각각 부분의 주석을 참고해주세요.

	## 단축 문자열 종류

	단축 문자열의 제일 앞의 키워드에 대한 설명입니다.

	:*: → 한영키와 상관없이 무조건
	:*?C: → 해당 문자열을 입력했을때만
	:*?b0C: → 문자열의 삭제도 수동으로 하는 경우 (write 함수를 만들어서 쓰고있습니다.)

	자세한 정보는 오토핫키 홈페이지의 문서를 참조해주세요. (찾기 귀찮음)
*/


#NoEnv
SendMode Input

; 관리 키워드
:*:edithotstring::
	RUN notepad.exe "%A_ScriptDir%\txt_replacer_common.ahk"
	return
:*:openhotstringfolder::
	RUN explorer.exe "%A_ScriptDir%"
	return
:*:reloadhotstring::
	reload
	return
:*:openhotstringgist::
	RUN https://gist.github.com/softblow/f5580239839e02cc7cd6
	return


; 재미삼아
:*:stsun::츤♪ 츤♪ 데~레 츤♪ 데~레 츤♪ 츤♪
;.
;　　｜彼　　｜君
;｜恋｜女｜彼｜と
;｜　｜の｜女｜
;｜　｜　｜と｜
;｜　　　｜
:*:stotono`t::.`n　　｜彼　　｜君`n｜恋｜女｜彼｜と`n｜　｜の｜女｜`n｜　｜　｜と｜`n｜　　　｜
;.
;　　｜그　　｜당
;　　｜녀｜그｜신
;｜사｜의｜녀｜과
;｜랑｜の｜와｜と
;｜恋　　｜と
:*:stotonok`t::.`n　　｜그　　｜당`n　　｜녀｜그｜신`n｜사｜의｜녀｜과`n｜랑｜の｜와｜と`n｜恋　　｜と

; 프로그래밍
; NetBeans의 키워드와 유사한 면이 많습니다.
; IDE의 자동 포맷팅 기능에도 어느정도 의존합니다.
; { 와 } 기호는 { } 안에 씁니다.
;; JAVA
:*:sout`t::System.out.println(
:*:psvm`t::public static void main(String[] args) {{}{enter}
:*:pu`t::public{Space}
:*:pr`t::private{Space}
:*:Str`t::String{Space}
:*:puvo`t::public void{Space}
:*:ab`t::abstract{Space}
:*:st`t::static{Space}
:*:co`t::const{Space}
:*:fi`t::final{Space}
:*:sync`t::synchronized{space}

;; C++
:*:intmain`t::int{space}main(int argc, char** argv){space}{{}{enter}

;; Javascript
:*:fn`t::function{space}(){space}{{}{left}{left}{left}{left}
:*:doc`t::document
:*:win`t::window
:*:elem`t::element

; 방향
; [s]pecial + [d]irection + [u]p / [d]own / [l]eft / [r]ight
:*:sduu::↑
:*:sddd::↓
:*:sdll::←
:*:sdrr::→
:*:->`t::→
:*:sdlu::↖
:*:sdul::↖
:*:sdru::↗
:*:sdur::↗
:*:sddl::↙
:*:sdld::↙
:*:sddr::↘
:*:sdrd::↘
:*:sdlr::↔
:*:sdrl::↔

; 그리스 문자
:*C:alpha`t::α
:*C:beta`t::β
:*C:gamma`t::γ
:*C:delta`t::δ
:*C:epsilon`t::ε
:*C:zeta`t::ζ
:*C:eta`t::η
:*C:theta`t::θ
:*C:iota`t::ι
:*C:kappa`t::κ
:*C:lambda`t::λ
:*C:mu`t::μ
:*C:nu`t::ν
:*C:xi`t::ξ
:*C:omicron`t::ο
:*C:pi`t::π
:*C:rho`t::ρ
:*C:sigma`t::σ
:*C:tau`t::τ
:*C:upsilon`t::υ
:*C:phi`t::φ
:*C:chi`t::χ
:*C:psi`t::ψ
:*C:omega`t::ω
:*C:Alpha`t::Α
:*C:Beta`t::Β
:*C:Gamma`t::Γ
:*C:Delta`t::Δ
:*C:Epsilon`t::Ε
:*C:Zeta`t::Ζ
:*C:Eta`t::Η
:*C:Theta`t::Θ
:*C:Iota`t::Ι
:*C:Kappa`t::Κ
:*C:Lambda`t::Λ
:*C:Mu`t::Μ
:*C:Nu`t::Ν
:*C:Xi`t::Ξ
:*C:Omicron`t::Ο
:*C:Pi`t::Π
:*C:Rho`t::Ρ
:*C:Sigma`t::Σ
:*C:Tau`t::Τ
:*C:Upsilon`t::Υ
:*C:Phi`t::Φ
:*C:Chi`t::Χ
:*C:Psi`t::Ψ
:*C:Omega`t::Ω


; 문장기호 특수문자로 변환
:*?C:...`t::…

; 특수문자
; [s]pecial + 모양
:*:sstarb::★
:*:sstarw::☆
:*:smu4::♩
:*:smu8::♪
:*:smu16::♬
:*:smaru9::⑨
:*:scopycircle::ⓒ
:*:sboy::♂

; 특수문자 : 색 있음
; [s]pecial + 모양 + [w]hite / [b]lack
:*:sheartw::♡
:*:sheartb::♥
:*:srectw::□
:*:srectb::■
:*:sdiaw::◇
:*:sdiab::◆
:*:strilb::◀
:*:strilw::◁
:*:strirb::▶
:*:strirw::▷
:*:striub::▲
:*:striuw::△
:*:stridb::▼
:*:stridw::▽

; 동그라미숫자 (유비트 시뮬레이터용)
; 탭으로 완성
:*?C:(1)`t::①
:*?C:(2)`t::②
:*?C:(3)`t::③
:*?C:(4)`t::④
:*?C:(5)`t::⑤
:*?C:(6)`t::⑥
:*?C:(7)`t::⑦
:*?C:(8)`t::⑧
:*?C:(9)`t::⑨
:*?C:(10)`t::⑩
:*?C:(11)`t::⑪
:*?C:(12)`t::⑫
:*?C:(13)`t::⑬
:*?C:(14)`t::⑭
:*?C:(15)`t::⑮
:*?C:(16)`t::⑯


; 일본어
:*?b0C:sohayou::
	write(4, "おはよう！")
	return
:*?b0C:skawaii::
	write(7, "可愛い")
	return

; 한국어
:*?C:stadakr::다녀왔습니다


write(x,y)
{
	sendinput,{left}{right}{bs %x%}
	sendinput,%y%
	return
}
