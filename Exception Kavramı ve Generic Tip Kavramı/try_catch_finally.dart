void main(List<String> args) {
  //Exception (Istisna) Kavramı ve Generic Tip Kavramı
  // try-catch-finally yapısı
  print("Program Başladı") ;
  int sayi = 100 ~/ 6 ; // ~/ işareti bölme işleminin tam sayıya yuvarlanmasını sağlar.
  try { // try bloğu içindeki kodlar hata verirse catch bloğuna geçer. bunu dene hata çıkarsa catch bloğuna geç.
    int sayi2 = 100 ~/ int.parse("emre"); //0 ; // 0'a bölünme hatası verir. // int.parse("emre") ; // Format hatası verir.
  } on IntegerDivisionByZeroException {
    // on IntegerDivisionByZeroException hatası verirse çalışır.
    print("Hata: Sayı 0'a bölünemez") ;
  } on FormatException catch(e) {
    // on FormatException hatası verirse çalışır.
    print("Hata: Format hatası") ;
    print(e.message) ; // hata mesajını yazdırır.
    print(e.source) ; // hata kaynağını yazdırır.
  } 
  catch(e) { // catch bloğu hata verirse çalışır. e değişkeni hata mesajını tutar.
    print("Hata: $e") ;
  }finally { // finally bloğu hata olsun olmasın çalışır.
    print("Finally bloğu çalıştı") ;
  }
  
  print("Sayı: $sayi") ;
  print("Program Bitti") ;
}