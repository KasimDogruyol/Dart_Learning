void main(List<String> args) {
   // Arttırma ve azaltma operatörleri
  int sayi1 = 10;
  sayi1 = sayi1 + 1;
  print(sayi1);
  sayi1 += 5;
  print(sayi1);
  sayi1++; // sayi1 = sayi1 + 1; // sayi1 += 1; // sayi1 i bir arttır demek
  print(sayi1);
  sayi1--; // sayi1 = sayi1 - 1; // sayi1 -= 1; // sayi1 i bir azalt demek
  print(sayi1);

  // İşlem önceliği
  // 1. parantez içi ()
  // 2. ++ -- (arttırma azaltma) Değişkenden önce gelenler ++sayi1,  
  // 3. * / %
  // 4. + -
  // 5. = atama operatörü
  // 6. ++ -- (arttırma azaltma) Değişkenden sonra gelenler sayi1++

  int s1 = 10;
  int s2 = 5;
  int sonuc = 0;
  double sonuc2 = 0;
  sonuc = (s1 + s2 * 3 - s2)+s2 - s1 * 5 + s1;
  print(sonuc);


  sonuc2 = (s1 * s2 +4 / 2 )+s1++  * s2 + ++s1;
  print(sonuc2);


}