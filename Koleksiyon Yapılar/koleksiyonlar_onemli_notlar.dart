void main(List<String> args) {
  //Koleksiyonlarla ilgili önemli notlar ve uyarılar
  var listem = [];
  var mySet = {}; // sistem bunu map veya set yapısı olarak nasıl algılar? şuan için map olarak algılıyor
  var myMap = {'yas':34};// şuan bu map mesela
  var mySet2 = {"İsmet"};// şuan bu set mesela

  var tekSayilar = [1,3,5];
  var ciftSayilar = [2,4,6];
//spread operator
  var sonListe = [...ciftSayilar,...tekSayilar];
  // sonListe.addAll(tekSayilar);
  // sonListe.addAll(ciftSayilar);
  print(sonListe); // sonuc: [2, 4, 6, 1, 3, 5]
  var map1 = {"ad":"Kasım"};
  var map2 = {"soyad":"Doğruyol"};
  var map3 = {"yas":24};
  var sonMap = {...map1,...map2,...map3};
  print(sonMap); // sonuc: {ad: Kasım, soyad: Doğruyol, yas: 24}

  var set1 = {"Kasım"};
  var set2 = {"İsmet"};
  var set3 = {"Recai"};
  var set4 = {"Kasım"};
  var set5 = {"İsmet"};
  var sonSet = {...set1,...set2,...set3,...set4,...set5}; // setlerde aynı elemanı birden fazla ekleyemezsiniz o yüzden sonucu 3 elemanlı bir set olur
  print(sonSet); // sonuc: {Kasım, İsmet, Recai}

}