void main(List<String> args) {
  // Lambda Fonksiyonlar
  // Lambda fonksiyonlar, isimsiz fonksiyonlardır. Bir değişkene atanabilirler.
  var fonksiyon1 = (int a, int b) {
    int toplam = a + b;
    print(toplam);
  };
  fonksiyon1(5, 6); // 11
  // print(fonksiyon1); // () => Null
  String isim = "Ahmet";
  var f2 =(int s) => s*2;
  var f3 = (int s) {
    return s*2;
  };
  print(f2(5)); // 10
  var sayi = f3(5);
  print(sayi); // 10
  
}

//Normal fonksiyon
void topla(int a, int b) {
  int toplam = a + b;
  print(toplam);
}