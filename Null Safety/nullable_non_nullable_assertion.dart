void main(List<String> args) {
  //Null Safety
  //Null Safety Nedir?
  //Null Safety, null değerlerin kontrolünü sağlayan bir özelliktir.
  ///nullable, non-nullable ve assertion operatör kavramları
  
  int? a; // ? işareti nullable bir değişken olduğunu belirtir.
  a =null;
  print("a değişkeninin değeri: $a");

  //generic tiplerde null
  List<String> StringListesi = ["emre", "ebrar", "ayşe", "fatma"];
  List<String>? nullOlabilcekStringListesi;
  List<int?> sayilar = [1, 2, 3, null, 5, 6, 7, 8, 9, 10];
  print("sayilar listesinin ilk elemani: ${sayilar[0]}");
  print("stringListesi listesi: $StringListesi");

  //null assertion operatörü
  int? nullOlabilirAmaDegil = 10;
  List<int?> nullOlabilirSayilar = [1, 2, 3, null, 5, 6, 7, 8, 9, 10];
  int c = nullOlabilirAmaDegil;
  // int c = nullOlabilirAmaDegil!; bu  int? nullOlabilirAmaDegil = 10; bu dışarda tanımlansa kullanılcaktı
  int d = nullOlabilirSayilar.first!;
  int e = nullDondurebilirAmaDondurmeyecek()!.abs(); //abs mutlak değerini buluyo
}

int? nullDondurebilirAmaDondurmeyecek() {
  return 10;
}