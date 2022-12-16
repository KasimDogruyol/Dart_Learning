void main(List<String> args) {
  //Soru1: Parametre olarak bir tane int sayı alan fonksiyon yazınız. Bu fonksiyon aldığı değere kadar olan çift olan sayıların toplamını ekrana yazdıran programı yazınız.
  //Soru2: Daire alanını hesaplayan fonksiyonu yazınız.PI sayısı opsiyonel olmalı eğer kullanıcı PI sayısını girmemişse 3.14 kabul edilsin.
  //Soru3: Bir üçgenin kenarlarını isimlendirilmiş parametre olarak alan fonksiyonu yazınız.Bu fonksiyon kenar değerlerine göre bu üçgenin çeşidini ekrana yazdıran programı yazınız.geriye değer döndürmesine gerek yoktur.

  int toplam = ciftSayilarToplami(10);
  print(" Çift Sayıların Toplamı : $toplam");
  double alan = daireAlani(5);
  print("Dairenin Alanı : $alan");
  ucgenCesidi(kenar1: 5, kenar2: 5, kenar3: 5);

}

//Soru1

ciftSayilarToplami(int sayi) {
  var toplam = 0;
  for (var i = 0; i < sayi; i++) {
    if (i % 2 == 0) {
      toplam += i;
    }
  }
  return toplam;
}

//Soru2
double daireAlani(double yaricap, [double pi = 3.14]) {
  return pi * yaricap * yaricap;
}

//Soru3
void ucgenCesidi({int kenar1 =1, int kenar2 = 1, int kenar3 = 1}) {
  if (kenar1 == kenar2 && kenar1 == kenar3) {
    print("Eşkenar üçgen");
  } else if (kenar1 == kenar2 || kenar2 == kenar3 || kenar1 == kenar3) {
    print("İkizkenar üçgen");
  } else {
    print("Çeşitkenar üçgen");
  }
}