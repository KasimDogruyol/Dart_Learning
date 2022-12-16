void main(List<String> args) {
  // Higher Order Function Kavramı
  List<int> sayilar = [1, 2, 3, 4];
  // sayilar.forEach((sayi) => print(sayi)); //bu fonksiyon başka bi fonksiyonu parametre olarak almıştır.
  sayilar.forEach(callback); //forEach fonksiyonu diyo ki bana parametre olaraka " (callback)" bir fonksiyon ver.bizde callback i verdik.
  kendiForEachyapim(sayilar,(int deger){
    print(deger);
  });
}
//bir listenin elemanlarını tek tek gezip ekrana yazdırmak 
void kendiForEachyapim (List<int> sayilar,Function callback){
  for (int i = 0; i< sayilar.length; i++){
    // print("Eleman: ${sayilar[i]}");
    callback(sayilar[i]);
  }
}

void ismimiSoyle(String isim) {
  print(isim);
}

void callback(int sayi) {
  print(sayi);
}