Popescu Flavia-Alexandra 311CD

					Tema 1

	Pentru rezolvarea temei am implemetat urmatoarele functii: 
-> readAdiacMat.m - citeste datele din fisierul input, si returneaza un vector cu toate elementele citite, matricea de adiacenta A, un vector cu numarul de legaturi catre alte pagini si valorile 
val1 si val 2 ce vor folosite la taskul 3;
-> Iterative.m - apeleaza functia readAdiacMat.m si foloseste datele returnate pentru a afla page rankul pentru fiecare pagina din graf (am ales metoda de rezolvare matriceala); returneaza vectorul R reprezentand pagerankul fiecarui nod;
-> Algebraic - asemanator cu Iterativ.m, pentru inversarea matricii (dupa cum se cere in formula data), ma voi folosi de 2 functii ajutatoare: 
	-> GramSchmidt.m - descompune matricea in forma QR; 
	-> SST.m - rezolva un sistem superior triunghiular;
	returneaza aceleasi valori ca si Itertaive.m
-> Apartenente.m - calculeaza gradul de apartenenta al unui vector dat ca paramtru astfel:
	-> rezolva un sistem de ecuatii de dimensiuni 2x2 pentru a afla perechea (a,b) de care avem nevoie pentru a calcula valoarea functiei u pe ramura a doua;
	-> calculeaza valoarea functiei in functie de intervalul in care se afla fiecare element din vector;
-> PageRank.m -> apeleaza readAdiacMat.m, Iterative.m, Algebraic.m si Apartenente.m, sorteaza descrescator rezulatele obtinute pentru gradele de apartenenta si afiseaza rezultatele intr-un fisier text.

