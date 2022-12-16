import 'dart:math';

void main(List<String> args) {
  //Exception (Istisna) Kavramı ve Generic Tip Kavramı
  // throw ile hata ayıklama
  print("Program Başladı") ;
  try{
    double deger = kareKokAl(-25) ;
  print("Karekök: ${deger.toStringAsFixed(2)}") ; // toStringAsFixed() fonksiyonu virgülden sonra kaç basamak yazılacağını belirler.
  }on FormatException catch(e){
    print(e.message) ;
    print(e.source) ;
  }catch(e){
    print(e) ;
  }
  
}
double kareKokAl(int i){
  if(i < 0) {
    throw new FormatException("Sayı negatif olamaz") ; // throw ile hata fırlatırız. 
    // peki bu hatayı nerde yakalıcaz bu hata fırlatılınca ilk önce kendi fonksiyonuna bakar burda bi catch yoksa main fonksiyonuna bakar.
  }else{
    return sqrt(i) ; // sqrt() fonksiyonu karekök alır. siz bir sayı girin, fonksiyon karekökünü hesaplar. double döndürür.
  }
  
  
}