//Ternay kısa if kullanımı ve null değer kontrolü

void main(List<String> args) {
  int sayi1 = 12;
  var sayi2 = 14;
  int kucukSayi;

  // if (sayi1 < sayi2) {
  //   kucukSayi = sayi1;
  // } else {
  //   kucukSayi = sayi2;
  // }

  //kısa if ile kullanımı şimdide

  sayi1 < sayi2 ? kucukSayi = sayi1 : kucukSayi = sayi2; // bu şu demek ? işareti if demek : işareti else demek
  // sayi1 küçüktür sayi2 ise kucukSayi değişkenine sayi1 değerini atama yap. değilse kucukSayi değişkenine sayi2 değerini atama yap.
  kucukSayi = sayi1 < sayi2 ? sayi1 : sayi2; // bu şekilde de kullanılabilir. ? dan sonra sayi1 i ata : dan sonra sağlamıyosa sayi2 yi ata.

  print("Küçük sayı : $kucukSayi");
  String ? ad = null;
  String ? soyad = "İsmet";
  String ? mesaj;
  mesaj = ad ?? soyad; // ?? işareti null değer kontrolü yapar. eğer ad null ise soyad değerini ata. değilse ad değerini ata. dedik bu şekilde.
  print("Merhana $mesaj");

}