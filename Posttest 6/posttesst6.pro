predicates
  factorial(unsigned,real) - procedure (i,o) %pendeklarasian predikat factorial dengan dua argumen unsigned dan real
  factorial(unsigned,real,unsigned,real) - procedure (i,o,i,i) %pendeklarasian kembali predikat factorial diikuti dengan 4 argumen berbeda dengan sebelumnya yang hanya diikuti dua argumen
  								
  /* Tipe data unsigned artinya bilangan tak bertanda yang nilainya tidak boleh negatif dan harus bernilai positif (dimulai dari angka 0).
     Tipe data Real adalah bilangan yang berisi titik desimal atau jenis bilangan pecahan. */

/* Numbers likely to become large are declared as reals. */

clauses
  factorial(N,FactN):- /* klausa factorial ini merupakan klausa yang pertama kali dicocokkan dengan GOAL. pada klausa factorial ini terdapat dua argumen dimana argumen N yang diikat 
  		          dengan nilai 3, semetara FactN masih belum diketahui nilainya. */			
	factorial(N,FactN,1,1.0). /* merupakan subgoal dari factorial factorial(N,FactN). factorial ini memilik 4 argumen yaitu (N,FactN,1,1.0). Karena N bernilai 3 maka
				     factorial(3,?,1,1.0)	*/

  factorial(N,FactN,N,FactN):-!.  /* factorial ini memiliki 4 argumen yaitu (N,FactN,N,FactN) kemudian diikuti jika maka dan tanda !(cut). Artinya jika nilai argumen N yang pertama sama
  				     dengan nilai argumen N yang ke-3 dan nilai argumen FactN yang pertama sama dengan nilai argumen FactN yang ke-4 maka Visual prolog akan menghentikan
  				     proses backtracking (lacak balik). */
  
  factorial(N,FactN,I,P):-     % factorial ini memiliki 4 argumen yaitu (N,FactN,I,P). Karena N = 3, FactN belum diketahui nilainya, I=1, dan P=1.0 sehingga factorial(3,?,1,1.0).
	NewI = I+1,   	       % Nilai dari NewI berasal dari I + 1
	NewP = P*NewI,	       % Nilai dari NewP berasal dari P * NewI
	factorial(N, FactN, NewI, NewP). % factorial ini memiliki 4 argumen yang nilainya didapatkan dari Hasil variabel diatasnya

goal
  factorial(3,X).
  /*goal yang akan dicari, dimana pada goal factorial telah ditentukan argumen pertamanya dengan nilai 3 dan pada argumen keduanya berisi variabel X.
  Nilai X ini yang akan dicari nilainya karena merupakan hasil faktorial pada nilai argumen pertama.
  Pertama kali Visual Prolog akan mencari fakta atau head dari rule yang cocok dengan goal, maka ditemukan factorial(N,FactN).
  Kemudian mencari pada klausa tersebut untuk mengunifikasi argumennya.
  Karena X variabel bebas, maka X dapat diunifikasikan ke variabel manapun. FactN juga merupakan variabel bebas dari head rule factorial, 
  maka terjadi unifikasi antara X dan factorial, sehingga X=FactN. Sementara variabel N diikat dengan nilai 3.*/
  