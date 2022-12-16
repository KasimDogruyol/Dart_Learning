//Soru 
  /*Bir fonksiyon yazın. Bu fonksiyon aldıgı id parametresine göre bir kullanıcı getirsin.Bu işlem 2 saniye sonunda sonuclanacaktır ve getirilen
  kisi bilgisi map olarak alınacaktır.Bu map yapısında username ve id bilgisi olacaktır.
  *
  *getirilen kişi bilgisindeki username değerini kullanarak bir kişinin kurslarını getiren bir foksiyon yazın. Bu fonksiyon 4 saniye sürecektir
  ve username değerine ait olan kursları içinde kursun adları olan bir liste olarak döndürecektir.
  *
  *
  *Son olarak da kurslar listesindeki ilk elemanı parametre olarak alan ve bu kursa ait yorumu döndüren bir fonksiyon yazın. Bu fonksiyon
  1 saniye sürecektir.
  
  */
void main(List<String> args) {
  
  idyeGoreUserGetir(5).then((Map value) {//then ile future sınıfının işlemi tamamlanınca çalışacak kodu yazdık.

    print(value); 
    usernameGoreKurslariGetir(value["username"]).then(( List kurslarListesi) {
      print(kurslarListesi);
      String ilkKurs = kurslarListesi[0] ;
      kursunIlkYorumunuGetir(ilkKurs).then((String yorum) {
        print(yorum) ;
      });
    });//usernameGoreKurslariGetir fonksiyonunu çağırdık ve value["username"] ile username değerini aldık

  });
  
  
}

Future<String> kursunIlkYorumunuGetir(String kursAdi){
  print("$kursAdi kursunun ilk yorumu getiriliyor") ;
  return Future<String>.delayed(Duration(seconds: 1), () {
    return "Bu kurs çok güzel" ;
  }) ;
}


Future<List<String>> usernameGoreKurslariGetir(String username){
  print("$username kullanicisinin kurslari getiriliyor") ;
  return Future<List<String>>.delayed(Duration(seconds: 4), () { //4 saniye sonra gelicek ve Future varsa arkadaşlar return bekler bizden
    return ["Dart","Flutter","JS"] ;
  }) ;
}

Future<Map<String,dynamic>>idyeGoreUserGetir(int id){
  print("$id idli kullanici getiriliyor") ;
  return Future<Map<String,dynamic>>.delayed(Duration(seconds: 2), () {
    return {"username":"kasim","id":id} ;
  }) ; 
}