Public PERIODE,n,vproject, TXTKODE, VNAME, VADDRESSA,tglstart,tglfinish

set date to italia
set century on
set status off
set talk off
set safety off
Tglstart = "12/12/01"
Tglfinish = "01/01/01"
PERIODE = "Bulanan"
Vproject = "CDLTL"
n = "CDLTL"
TXTKODE = "1140.01.01"
VNAME = "PT ALIS JAYA CIPTATAMA"
VADDRESSA = "Klepu, Ceper, Klaten, Jawa Tengah"
Set defa to c:\account\INVENTORY\NCBA\CDLTL

do form c:\account\INVENTORY\ncba\accoverC
do c:\account\inventory\ncba\invmenu.mpr 

