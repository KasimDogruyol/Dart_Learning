import 'dart:ffi';

void main(List<String> args) {
  // Kalıtımda kurucu Methodların Kullanımı 
  Asker kasim =Asker("Kasım",24);
  Er ismet = Er("İsmet",42);
  ismet.selamla();
  ismet.memleket = ("Burdur");
  ismet.selamla();
  // Deneme recai =Deneme();
  // recai.selamla();
}

class Asker {
  String ad = "Varsayılan";
  int yas = 0;
  String memleket = "Çanakkale";
  Asker(this.ad, this.yas){
    print("Asker Sınıfının kurucusu çalıştır");
  }
  void selamla(){
    print("Merhaba adım $ad ve yaşım $yas");
  }
}

class Er extends Asker {
  Er(String ad, int yas):super(ad,yas){
    print("Er sınıfının kurucusu çalıştı");
  }

  void memleketDegistir(String yeniMemleket){
    super.memleket = yeniMemleket;  //super demek üst sınıfa git demek
  }

  @override
  void selamla(){
    print("Er sınıfından selamlar");
  }
}

// class Deneme extends Er {
//   Deneme(){
//     print("Deneme sınıfının kurucusu oluştu ");
//   }
// }