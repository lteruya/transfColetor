;Menu, MyMenu, Add, Nome, MenuHandler
;Menu, MyMenu, Add, CPF, MenuHandler
;Menu, MyMenu, Add, Sair, MenuHandler
;Menu, MyMenu, Add

#Persistent
OnClipboardChange("ClipChanged")
return


ClipChanged(Type) {

   Array := StrSplit(clipboard,";")

   if (Array[1] = "Coletor") {
      global acesso0 = % Array[2]
      global acesso1 = % Array[3]
      global acesso2 = % Array[4]
      global acesso3 = % Array[5]
      global acesso4 = % Array[6]

      global acesso5 = % Array[7]
      global acesso6 = % Array[8]
      global acesso7 = % Array[9]
      global acesso8 = % Array[10]
      global acesso9 = % Array[11]
      global acessoMult = % Array[9]
      clipboard = 
   }	

   if (Array[1] = "lista") {
	global acessoMais = % Array[2]
	clipboard =
   }

   if (Array[1] = "lista_off") {
	global acessoMais = 
   }


   if (Array[1]="modeloCrime"){
	Run, swriter.exe modeloCrime.ott
	WinWaitActive, Sem título 1 - LibreOffice Writer, ,
	clipboard= % Array[2]
   }

   if (Array[1]="modeloAnexo"){
	Run, swriter.exe modeloAnexo.ott
	WinWaitActive, Sem título 1 - LibreOffice Writer, ,
	clipboard= % Array[2]
   }

   if (clipboard = "ColetorSair") {
      clipboard = 
      ExitApp
   }
}


;MenuHandler:
;MsgBox You selected %A_ThisMenuItem% from the menu %A_ThisMenu%.
; item=%A_ThisMenuItem%
; if (item="Nome"){
;    send %acesso0%
; }
; if (item="CPF"){
;    send %acesso2%
; }
; if (item="Sair"){
;    ExitApp
; }
;return
;RButton::Menu, MyMenu, Show

Numpad0:: send %acesso0%
Numpad1:: send %acesso1%
Numpad2:: send %acesso2%
Numpad3:: send %acesso3%
Numpad4:: send %acesso4%
Numpad5:: send %acesso5%
Numpad6:: send %acesso6%
Numpad7:: send %acesso7%
!Numpad8:: send %acesso8%
Numpad9:: send %acesso9%
NumpadAdd:: send {LShift Up}{RShift Up}%acessoMais%
vkC2:: send {LShift Up}{RShift Up}cino%acessoMult%
NumpadDiv:: send {LShift Up}{RShift Up}cino%acessoMult%

!Numpad0::
clipboard = %acesso0%
send {CTRLDOWN}v{CTRLUP}
clipboard = 
return

!Numpad1::
clipboard = %acesso1%
send {CTRLDOWN}v{CTRLUP}
clipboard = 
return

!Numpad2::
clipboard = %acesso2%
send {CTRLDOWN}v{CTRLUP}
clipboard = 
return

!Numpad3::
clipboard = %acesso3%
send {CTRLDOWN}v{CTRLUP}
clipboard = 
return

!Numpad4::
clipboard = %acesso4%
send {CTRLDOWN}v{CTRLUP}
clipboard = 
return

!Numpad5::
clipboard = %acesso5%
send {CTRLDOWN}v{CTRLUP}
clipboard = 
return

!Numpad6::
clipboard = %acesso6%
send {CTRLDOWN}v{CTRLUP}
clipboard = 
return

!Numpad7::
clipboard = %acesso7%
send {SHIFTUP}
send {CTRLDOWN}v{CTRLUP}
clipboard = 
return

Numpad8:: 
clipboard = %acesso8%
send {CTRLDOWN}v{CTRLUP}
clipboard = 
return

!Numpad9::
clipboard = %acesso9%
send {CTRLDOWN}v{CTRLUP}
clipboard = 
return


;NOMES DE ARQUIVOS
!0::
clipboard = infoseg - %acesso0%
send {CTRLDOWN}v{CTRLUP}
clipboard =
return

!9::
clipboard = sinic - %acesso0%
send {CTRLDOWN}v{CTRLUP}
clipboard =
return

!8::
clipboard = ssp-sp - %acesso0%
send {CTRLDOWN}v{CTRLUP}
clipboard =
return

!7::
clipboard = cnis-vinculos - %acesso0%
send {CTRLDOWN}v{CTRLUP}
clipboard =
return










