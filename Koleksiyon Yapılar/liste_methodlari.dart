void main(List<String> args) {
  // Listelerde kullanılan bazı yardımcı methodlar
  List<int> sayilar = [1,2,3,4,5,6,7,8,9,10];
  print(sayilar.first); // ilk elemanı verir
  print(sayilar.last); // son elemanı verir
  print(sayilar.isEmpty); // boş mu dolu mu boşsa true doluysa false döner
  print(sayilar.isNotEmpty); // boş mu dolu mu doluysa true boşsa false döner
  print(sayilar.length); // eleman sayısını verir
  print(sayilar.reversed); // ters çevirir ters sırada yazdırır
  sayilar.add(21); // listenin sonuna eleman ekler
  sayilar.remove(3); // listeden eleman siler ilk gördüğü 3'ü siler
  sayilar.removeAt(2); // listeden eleman siler 2. indexteki elemanı siler
  sayilar.removeLast(); // listeden eleman siler son elemanı siler
  sayilar.clear(); // listedeki tüm elemanları siler
  sayilar.insert(2, 3); // listedeki 2. indexteki elemanı 3 yapar
  sayilar.insertAll(2, [3,4,5]); // listedeki 2. indexteki elemanı 3,4,5 yapar
  sayilar.replaceRange(2, 5, [3,4,5]); // listedeki 2. indexten 5. indexteki elemanları 3,4,5 yapar
  sayilar.fillRange(2, 5, 3); // listedeki 2. indexten 5. indexteki elemanları 3 yapar
  sayilar.shuffle(); // listedeki elemanları karıştırır
  print(sayilar.elementAt(2)); // listedeki 2. indexteki elemanı verir
  print(sayilar.indexOf(3)); // listedeki 3'ün indexini verir
  if(sayilar.contains(3)) { // listede 3 var mı yok mu listede eleman var mı yok mu diye bakar
    print("3 var");
  } else {
    print("3 yok");
  }
}