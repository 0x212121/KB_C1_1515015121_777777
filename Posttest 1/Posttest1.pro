predicates
  phone(symbol, long, symbol) - nondeterm (o, o, i), nondeterm (o, i, o)
  piano(symbol, long, symbol) - nondeterm (o, o, i), nondeterm (o, i, o)
  motor(symbol, long, symbol) - nondeterm (o, o, i), nondeterm (o, i, o)
  beli(symbol, long, symbol) - nondeterm (o, o, i), nondeterm (o, i, o)
  jual(symbol, long, symbol) - nondeterm (o, o, i), nondeterm (o, i, o)
  
clauses
  phone(nokia, 2000000, merah).
  piano(yamaha, 3000000, hitam).
  motor(honda, 15500000, biru).
  
  beli(Merk, Harga, Warna):-
  	phone(Merk, Harga, Warna);
  	piano(Merk, Harga, Warna).
  
  jual(Merk, Harga, Warna):-     
  	phone(Merk, Harga, Warna);
  	piano(Merk, Harga, Warna);
  	motor(Merk, Harga, Warna).
  	
goal
  beli(Merk, Harga, hitam);
  jual(Merk, 15500000, Warna).