void main(List<String> args) {
  //Set yapısı ve kullanımı
  // Set yapısı listelerden farklı olarak aynı elemandan birden fazla olamaz

  Set<String> isimler = Set();
  isimler.add("Ahmet");
  isimler.add("Mehmet");
  isimler.add("Ahmet");
  isimler.add("Mehmet");
  isimler.add("İsmet");
  isimler.add("Mehmet");
  isimler.add("Recai");
  isimler.add("Mehmet");
  isimler.add("Ahmet");

  for (String isim in isimler) {
    print("isim: $isim");
  }

  Set<int> sayilar = Set.from([1,2,3,4,2,1,2,1,6,2,1,3,4,57,1,1,5,1,7]);
  List<int> sayilarListesi = [0,2,4,6,8,10,12,14];
  for (int sayi in sayilar) {
    print("sayi: $sayi");
  }
  sayilar.addAll(sayilarListesi);
  for (int sayi in sayilar) {
    print("sayi: $sayi");
  }
}