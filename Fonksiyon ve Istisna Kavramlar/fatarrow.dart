void main(List<String> args) {
  // Fonksiyonlar
  // Fanksiyon kısa gösterimi fat arrow kullanımı
sayilariTopla();
 int farki =sayilariCikar(15, 5);
 print("Farkları: $farki");
  int carpim = sayilariCarp(5, 5);
  print("Çarpım: $carpim");
  int maxSayi = maxOlanSayiyiBul(10, 5);
  print("Max Sayı: $maxSayi");
  int minSayi = minOlanSayiyiBul(10, 5);
  print("Min Sayı: $minSayi");

}

void sayilariTopla(){
  int sayi1 = 10;
  int sayi2 = 5;
  int toplam = sayi1 + sayi2;
  print("Toplam: $toplam");
}

int sayilariCikar(int sayi1, int sayi2) => sayi1 - sayi2; //fat arrow kullanımı =>
  
int sayilariCarp(int sayi1, int sayi2) => sayi1 * sayi2; 

int maxOlanSayiyiBul(int sayi1, int sayi2) => sayi1 > sayi2 ? sayi1 : sayi2; //fat arrow kullanımı =>

int minOlanSayiyiBul(int sayi1, int sayi2) => sayi1 < sayi2 ? sayi1 : sayi2;
