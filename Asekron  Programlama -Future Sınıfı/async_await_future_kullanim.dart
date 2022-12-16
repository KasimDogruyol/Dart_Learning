void main(List<String> args) { 
  //Async ve Await Kullanımı - Future Sınıfı
  print("internetten kişi verisi getirilecek") ;
  kisiyleIlgiliIslemler() ;
  
  print("İşlem Bitti") ;
}

void kisiyleIlgiliIslemler()async { //async ile tanımladık çünkü await kullandık
  String kisi = await kisiVerisiniGetir(); //await ile future sınıfının işlemi tamamlanınca çalışacak kodu yazdık.await varsa async olmak zorunda
  print(kisi.length) ;
}

Future<String> kisiVerisiniGetir() {
   return Future<String>.delayed(Duration(seconds: 5), () {
    return "Kisi Adi : Kasım ve id: 100" ;
  }) ;
}