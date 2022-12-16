void main(List<String> args) {
  //Kendi istisna sınıfımızı oluşturma
  try{
    Ogrenci ebrar = Ogrenci(-1) ;
    print("Yaş: ${ebrar.yas}") ;
  }on AgeException catch(e){
    print(e.message) ;
  }finally{
    print("Finally bloğu çalıştı") ;
  }
}
class AgeException implements Exception {
  String message;
  AgeException({ this.message = 'AgeException' }) ;
  @override
  String toString() {
    return "Hatanın toString() metodu çağrıldı" ;
  }
}

class Ogrenci {
  int yas ;
  Ogrenci( this.yas){
    if(yas < 0) {
      throw new AgeException(message:'AgeException - Yaş Negatif Olamaz' ) ;
    }else{
      print("Ogrenci sınıfı oluşturuldu") ;
    }
  } 
}