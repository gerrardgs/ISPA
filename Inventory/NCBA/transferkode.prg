close all

* memasukkan excel ke dalam glmaster
APPEND FROM "c:\my documents\teguh\masterbaru.xls" TYPE XLS

* R (Rugi Laba) diganti dengan S (SHU)
replace all tipekode with "S" for tipekode = "R"

* Menghapus yang lokasi kerja diluar pusat dan klaten
delete all for val(substr(kode,9,2))>=2

* Menghapus yang unit usaha diluar sentral, vanili dan lada
delete all for val(substr(kode,6,2))>2

* Menghapus yang panjang norek < 4
delete all for len(trim(kode)) < 4

pack

* Selesai