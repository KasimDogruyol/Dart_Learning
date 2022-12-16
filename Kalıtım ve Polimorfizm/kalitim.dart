void main(List<String> args) {
  //Kalıtım ve Polimorfizm
  // Kalıtım: Bir sınıfın özelliklerini başka bir sınıfa aktarmak için kullanılır
  // Polimorfizm: Aynı isimli fakat farklı işlevleri olan metotların kullanılmasıdır
  // İlk Kalıtım örneği ve method overriding

  User user1 =User();
  NormalUser user2 = NormalUser();
  user2.davetEt();

  readOnlyUser user3 = readOnlyUser();
  // user3.adiniSoyle();
  user3.login();
  // user3.davetEt();
  
}

class User{
  String email = "";
  String password = "";

  void login() {
    print("Kullanıcı girişi yapıldı");
  }
}

class NormalUser extends User {
  
  void davetEt() {
    print("Normal user arkadaşlarını davet etti");
  }
  @override // bu sınıfın bir üst sınıfı var ve o sınıfta aynı isimli bir metot varsa onu ezmek için kullanılır
  void login() {
    print("Normal kullanıcı girişi yapıldı");
  }
}

class readOnlyUser extends NormalUser {
  
  void adiniSoyle() {
    print("Ben readOnlyUser sınıfından geliyorum yani sadece okuyabilirim"); 
  }
  @override
  void login() {
    print("readOnlyUser girişi yapıldı");
  }
}

class AdminUser extends User {
  

  void toplamKullaniciSayisi() {
    print("Toplam kullanıcı sayısı: 100");
  }
}