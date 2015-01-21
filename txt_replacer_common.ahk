#NoEnv
SendMode Input

:*:edithotstring::
	RUN notepad++.exe "%A_ScriptDir%\txt_replacer_common.ahk"
	return
:*:openhotstringfolder::
	RUN explorer.exe "%A_ScriptDir%"
	return
:*:reloadhotstring::
	reload
	return
    
:*:stsun::츤♪ 츤♪ 데~레 츤♪ 데~레 츤♪ 츤♪
:*:stotono`t::.`n　　｜彼　　｜君`n｜恋｜女｜彼｜と`n｜　｜の｜女｜`n｜　｜　｜と｜`n｜　　　｜
:*:stotonok`t::.`n　　｜그　　｜당`n　　｜녀｜그｜신`n｜사｜의｜녀｜과`n｜랑｜の｜와｜と`n｜恋　　｜と
:*:jvsysout::System.out.println(
:*:sout`t::System.out.println(
:*:jvpubmain::public static void main(String[] args) {{} 
:*:psvm`t::public static void main(String[] args) {{} 
:*:pu`t::public{Space} 
:*:pr`t::private{Space} 
:*:Str`t::String{Space} 
:*:puvo`t::public void{Space} 
:*:ab`t::abstract{Space} 
:*:st`t::static{Space} 
:*:co`t::const{Space} 
:*:fi`t::final{Space} 

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
:*:sstarb::★
:*:sstarw::☆
:*:smu4::♩
:*:smu8::♪
:*:smu16::♬
:*:smaru9::⑨
:*:scopycircle::ⓒ
:*:sheartw::♡
:*:sheartb::♥
:*:sboy::♂
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



:*?b0C:sohayou::
	write(4, "おはよう！")
	return
:*?b0C:skawaii::
	write(7, "可愛い")
	return
	

:*?C:stadakr::다녀왔습니다


write(x,y)
{
	sendinput,{left}{right}{bs %x%}
	sendinput,%y%
	return
}