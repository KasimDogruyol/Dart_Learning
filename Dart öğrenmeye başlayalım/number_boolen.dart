 void main(List<String> args) {
  int yas = 24;
  print(yas);

  yas = 25;
  print(yas);

  num yil = 1998;
  print(yil);

  double sayi = 52;
  print(sayi);

  int kilo = 72.4.toInt(); //  toInt() methodu ile double değeri int'e çeviriyoruz. tam sayıya çeviriyoruz yani.
  print(kilo);

  var sayi2 = 56;

  int numara; // değişken tanımlanmış ama değeri atanmamış. int bir veri varsa ilk değerini veriniz.
  numara = 0;
  print(numara); // null değerini verir. değişken tanımlanmış ama değeri atanmamış.

  double? sayi3 = null; // hi bir değere boş yani null tanımlanamaz hata verir. bu yüzden ? işareti ile null değerini tanımlıyoruz.
  // ? şu anlama geliyor. sayi3 değişkeni null değerini alabilir. ona göre işlem yap aynı şey int içinde num ve boolen için de geçerli.
  print(sayi3);

  int hexadecimalSayi = 0x1A; // 0x ile başlayan sayılar hexadecimal sayılar.
  // 16 tabanlı sayılar
  print(hexadecimalSayi);
  

}