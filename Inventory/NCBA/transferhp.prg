set talk off

close database

	SELECT 1
		USE C:\ACCOUNT\GL\NCBA\&vproject\ARMASTER EXCL
		INDEX ON KODErek TO ARMASTER
		
	SELECT 2
		USE C:\ACCOUNT\GL\NCBA\&vproject\GLMTRANSFER EXCL
		index on kode to glmtransfer

select 1
pack
REPLACE ALL koderek WITH LEFT(koderek,5)+SUBSTR(koderek,10,2)+".00."+SUBSTR(koderek,6,3)
browse
wait

****
select 2
count to X
FOR I = 1 TO X
	SELECT 2 
	GOTO I 
	M.KODE = KODE
	M.KODELAMA = KODELAMA
	SELECT 1
	REPLACE ALL koderek WITH LEFT(m.KODE,4)+substr(koderek,5,10),typef WITH "Z" FOR LEFT(koderek,4) = LEFT(m.KODELAMA,4) AND typef<>"Z" 
ENDFOR	

WAIT WINDOWS "TRANSFER SUCCESS..." nowait