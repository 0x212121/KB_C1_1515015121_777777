nowarnings

domains
  %inisialisasi variabel
  nama,merk,warna,kode = symbol
  umur = byte   
  tinggi = integer  
  hasil, harga = long
  
predicates
  run - nondeterm()
  nondeterm id(nama,umur,tinggi,kode)
  nondeterm kendaraan(merk, warna, harga)
  kendaraan(merk) - nondeterm (i)
  procedure hitung(harga,hasil)

clauses
  run:-
  	write("************Tugas Posttest Indra Wijaya************"),nl,
	    readchar(Y),Y='y'.
  	
  	id("Indra", 20, 168, "A0001").
	id("Namamu", 19, 165, "A0002").
	
  	kendaraan("Toyota","Merah",500000000).
  	kendaraan("Nissan","Silver",400000000).
  	
  	kendaraan(Merk):-
  		Merk="Toyota".
  
  	hitung(Harga,Hasil):-
     		Hasil=Harga*0.5.
  
goal
  run,
  id(Nama,Umur,Tinggi,"A0001"),
  kendaraan(MerkMobil,Warna,500000000),
  hitung(500000000,HargaMobilSecond);
  kendaraan("Toyota").