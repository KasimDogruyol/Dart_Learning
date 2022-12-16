void main(List<String> args) {
  //then() ve catchError() metotları
  print("Anne Çocuğu Ekmek Almak İçin Gönderdi") ;
  Future<String> sonuc = uzunSurenIslem() ;

  
  
  //Başarısız olursa çalışır
  sonuc.then((value) => print(value))
  .catchError((hata) => print("Hata: $hata")
  ).whenComplete(() => print("Bakkal işlemi tamamlandi"));
  //Başarılı olursa çalışır
  sonuc.then((value) => print(value)) ; //then() metodu ile future sınıfının işlemi tamamlanınca çalışacak kodu yazdık eğer direkt olarak
  //print(sonuc) yazarsak bu beklemez ve 2 sn sonra geliceği için hatalı gelir o yüzden then() metodu ile yazdık
  print("Peynir Alindi") ;
  print("Ekmek Alindi") ;
  print("Kahvalti hazir") ;
}
Future<String> uzunSurenIslem() {

   Future<String> sonuc = Future.delayed(Duration(seconds: 2), () {
    return "Çocuk Eve Geldi" ;}) ;
    // throw new Exception("Çocuk eve gelmedi") ;}) ;
  return sonuc;
}