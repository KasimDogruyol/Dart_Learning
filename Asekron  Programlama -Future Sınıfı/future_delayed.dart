import 'dart:io';

void main(List<String> args) {
  // İlk Future Yapımızı Oluşturalım Future.delayed() kullanımı
  print("Anne Çocuğu Ekmek Almak İçin Gönderdi") ;
  uzunSurenIslem() ;
  print("Peynir Alındı") ;
  print("Ekmek Alındı") ;
  print("Kahvaltı hazır") ;
}

void uzunSurenIslem() {
  print("Çocuk Ekmek Almak İçin Dışarı Çıktı") ;
  // sleep(Duration(seconds: 5)); // 5 saniye bekle bunda bu işlem gerççekleşmeden sonraki işler gerçekleşmez
  Future.delayed(Duration(seconds: 5), () => print("Çocuk Eve Geldi")) ; // 5 saniye sonra bunda ise diğer işlemler yapılmaya devam etti 5 sn sonra bu devreye girdi
  
   
}