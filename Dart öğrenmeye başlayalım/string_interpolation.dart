// VsCode da launch.json dosyasından uygulamayı çalıştırma

void main(List<String> args) {
  String isim = "Kasım";
  String soyIsim = "Doğruyol";
  var kurs = 'Flutter \'ın Kullanımı';
  String kursTanimi = "Flutter'ın ve Dart'ın Kullanımı";
  print(isim + " " + soyIsim);
  print("$isim $soyIsim");
  print("Soyadım olan  $soyIsim'da bulunan karakter sayısı: ${soyIsim.length}"); //bu şekilde de yazılabilir.
  print("Soyadım olan $soyIsim'da bulunan karakter sayısı: " + soyIsim.length.toString()); //bu şekilde de yazılabilir.
  print("Karakter sayısı: ${soyIsim.length}");

  double en = 10;
  double boy = 12;
  print("Dikdörtgenin alanı: ${en * boy}");
  print("Eni ${en.toInt()} Boyu ${boy.toInt()} olan dikdörtgenin alanı: ${(en*boy).toInt()}'dir");
  
  // Sorular
  // 1. Soru Adınızı, soyadınızı ve yaşınızı farklı değişkenlerde tutunuz. Ardından ekrana "Benim adım Kasım Doğruyol, 24 yaşındayım. 
  //ve tüm ismimdeki karakter sayısı :" şeklinde bir yazı yazdırınız.
  // 2. Soru Bir üçgenin tüm kenarlarını değişkenlerede saklayıp çevresini ekrana yazdırın
  // örnek birinci kenarı 3, ikinci kenarı 4 olan bir dik üçgenin hipotenüsünü bulunuz.

  //Cevaplar
  // 1. Soru
  String ad = "Kasım";
  var soyad = "Doğruyol";
  int yas = 24;
  print("Benim adım $ad $soyad, $yas yaşındayım ve tüm ismimdeki karakter sayısı: ${ad.length + soyad.length}'dür.");
  // 2. Soru
  int kenar1 = 3;
  int kenar2 = 4;
  int kenar3 = 5;
  print("Birinci kenarı $kenar1, ikinci kenarı $kenar2, üçüncü kenarı $kenar3 olan Üçgenin çevresi: ${kenar1 + kenar2 + kenar3}'dir.");
  
  
}