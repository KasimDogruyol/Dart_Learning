void main(List<String> args) {
  cevreyiHesapla();
  int sonuc =alanHesapla(5,10);
  int hacims = hacimHesapla(8, 9, 10);
  
  print("Alan: $sonuc");
  print("Hacim: $hacims");
  print("Hacim : ${hacimHesapla(8, 10, 12)}");
}
//parametresiz fonksiyon
void cevreyiHesapla(){ //void fonksiyonlar geriye değer döndürmez. return kullanılmaz. return kullanıcaksak void yerine int gibi bir veri tipi kullanmalıyız.
  int en =5, boy = 10;
  int cevre = (en + boy)*2;
  print("Çevre: $cevre");
}
//parametreli fonksiyon
int alanHesapla(int sayi1, int sayi2){
  int alan = sayi1 * sayi2;
  //print("Alan: $alan");
  return alan;
}
int hacimHesapla(int sayi1, int sayi2, int sayi3){
  int hacim = sayi1 * sayi2 * sayi3;
  return hacim;
}
