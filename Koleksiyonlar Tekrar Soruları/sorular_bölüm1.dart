import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  //Sorular
  //Soru 1: Sehirleri tutan bir liste oluşturun,4 tane il ekleyip sırasıyla ekrana yansıtın
  //Soru 2: Keyleri string, değerleri dynmic olan bir map oluşturun.Bu map yapısında bilgisayarınızın islemci çekirdek sayısını ve ram miktarını ve ssd olup olmadığı bilgisini tutun ve ekrana yazdırın
  //Soru 3: Her bir elemanında keyleri string, valueleri dynamic olan bir map yapısı oluşturun . Bu listedeki her bir eleman il adını,ilçe sayısını, plaka kodunu tutsun. Sonrasında da bu listeyi okunaklı bir şekilde yazdırın örnek listenin 1.elemanında bulunan il ankara,plaka kodu : 06 ilçe sayısı:10.
  //Soru 4:  5 elemanlı iki farklı liste oluşturun. Elemanlar 0 -50 ye rastgele şekilde oluşturulsun Bu elemanları tek bir listeye aktarın. oluşan son listenin elemanlarının karelerini tutan set yapısı oluşturup ekrana yazdırın
  //Soru 5: Kullacıdan aldığınız integer pozitif sayıları bir listede tutun, kullanıcı 0 değerini girdiğinde girilen sayıların ortalamasını ekrana yazdırın.


  // Cevaplar
  //Soru 1:
  List<String>sehirler = List.filled(4, "");
  sehirler[0] = "Ankara";
  sehirler[1] = "İstanbul";
  sehirler[2] = "İzmir";
  sehirler[3] = "Adana";

  for (var sehir in sehirler) {
    print(sehir);
  }

  //Soru 2:
  Map<String,dynamic>bilgisayar = {
    "islemci": 8,
    "ram": 16,
    "ssd": true
  };
  print("Bilgisayar Bilgileri: ");
  for (var element in bilgisayar.entries) {
    print( "${element.key}: ${element.value}");
  }

  //Soru 3:
  List<Map<String,dynamic>>iller = [
    {
      "il": "Ankara",
      "ilçe": 25,
      "plaka": 6
    },
    {
      "il": "İstanbul",
      "ilçe": 39,
      "plaka": 34
    },
    {
      "il": "İzmir",
      "ilçe": 35,
      "plaka": 35
    },
    {
      "il": "Adana",
      "ilçe": 12,
      "plaka": 1
    },
    {
      "il": "Bursa",
      "ilçe": 16,
      "plaka": 16
    }
  ];
  print(iller);

  //Soru 4:
  List<int>sayilar1 = List.filled(5, 0);
  List<int>sayilar2 = List.filled(5, 0);
  List<int>sonListe = <int>[];
  Set<int>sonSet = <int>{};
  for (int i = 0; i < sayilar1.length; i++) {
    sayilar1[i] = Random().nextInt(50);
    sayilar2[i] = Random().nextInt(50);
  }
  sonListe = [...sayilar1,...sayilar2];

  for (var sayi in sonListe) {
    sonSet.add(sayi*sayi);
  }
  print(sonSet);

  //Soru 5:
  List<int>girilenSayilar = <int>[];
  int girilenSayi = 1;
  while (girilenSayi != 0) {
    print("Lütfen bir sayı giriniz: ");
    girilenSayi = int.parse(stdin.readLineSync()!);
    if (girilenSayi != 0) {
      girilenSayilar.add(girilenSayi);
    }
  }
  int toplam = 0;
  for (var sayi in girilenSayilar) {
    toplam += sayi;
  }
  print("Girilen sayıların ortalaması: ${toplam/girilenSayilar.length}");
  


}