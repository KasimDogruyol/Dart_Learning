void main(List<String> args) {
  //Map yapısı ve kullanımı
  // Map yapısı key-value şeklinde verileri tutar yani anahtar ve değer şeklinde
  Map<String,int>plakaKodlari = {
    "Adana": 1,
    "İstanbul": 34,
    "Ankara": 6,
    "İzmir": 35,
    "Antalya": 7,
    "Bursa": 16,
    "Çanakkale": 17,
  };
  print(plakaKodlari);
  print(plakaKodlari["Ankara"]);
  print(plakaKodlari["İstanbul"]);

  Map<String,dynamic>kasim = {
    "soyad": "Doğruyol",
    "yas": 24,
    "bekarMi": true,
    "kilo": 75.5,
    "ad": "Kasım"
  };
  print(kasim);
  print(kasim["ad"]);
  print(kasim["soyad"]);
  print(kasim["yas"]);
  print(kasim["bekarMi"]);

  List sayilar = [1,2,3,4,5,6,7,8,9,10];
  Map<String,dynamic>deneme = Map();
  Map<String,dynamic>deneme2 = {};
  deneme2['yas']= 24;

  for (String oankiAnahtar in kasim.keys){
    print("anahtar: $oankiAnahtar, değer: ${kasim[oankiAnahtar]}");
  }
  for (dynamic oankiDeger in kasim.values){
    print("değer: $oankiDeger");
  }
  for (var element in kasim.entries){ //entries: anahtar ve değerleri birlikte döndürür
    print("anahtar: ${element.key}, değer: ${element.value}");
  }
  if (kasim.containsKey("yas")){ //containsKey: anahtarın olup olmadığını kontrol eder
    print("yas anahtarı var");
  }
  if (kasim.containsValue(24)){//containsValue: değerin olup olmadığını kontrol eder
    print("24 değeri var");
  }
}