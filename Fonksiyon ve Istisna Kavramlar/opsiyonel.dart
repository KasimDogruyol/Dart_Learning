void main(List<String> args) {
  // Fonksiyonlar
  // Opsiyonel  ve İsimlendirilmiş Parametreler ve Varsayılan Değer Atamaları
  int toplam = sayilariTopla(10, 5,7);
  print("Toplam: $toplam");
  int toplam2 = sayilariTopla2(10, 5);
  print("Toplam2: $toplam2");
  int toplam3 = sayilariTopla3(sayi2: 10, sayi1: 5, sayi3: 7);
  print("Toplam3: $toplam3");
  int hacim = hacimHesapla(en:7, yukseklik: 10,boy: 3);
  print("Hacim: $hacim");
  
}
// required parametreler bu şekilde tanımlanır. mutlaka bu parametrelerin değerleri girilmelidir. ve bu sırada olmalıdır.
int sayilariTopla(int sayi1, int sayi2,int sayi3 ) {
  return sayi1 + sayi2 + sayi3;
}
// Opsiyonel parametreler bu şekilde tanımlanır. bu parametrelerin değerleri girilmek zorunda değildir. ve bu sırada olmak zorunda değildir.
int sayilariTopla2(int sayi1, int sayi2, [int  sayi3 = 0]) {
  return sayi1 + sayi2 + sayi3;
}

int sayilariTopla3({int sayi1 = 0, int sayi2 =0, int  sayi3 =0} ) {
  return sayi1 + sayi2 + sayi3;
}

int hacimHesapla({int en =1, int boy =1, int yukseklik = 1}) {
  return en *boy * yukseklik;
}