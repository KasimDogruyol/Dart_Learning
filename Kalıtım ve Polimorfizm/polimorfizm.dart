
void main(List<String> args) {
  //Kalıtım ve Polimorfizm
  // Polimorfizm: Aynı isimli fakat farklı işlevleri olan metotların kullanılmasıdır
  // Polimorfizm çok biçimlilik ve Kalıtımın Faydaları

  User user1 =User();
  var user2 = NormalUser();
  user2.davetEt();

  ReadOnlyUser user3 = ReadOnlyUser();
  // user3.adiniSoyle();
  user3.login();
  // user3.davetEt();
  AdminUser user4 = AdminUser();

  // AdminUser user5 = User(); // bu şekilde bir atama yapılamaz çünkü AdminUser User sınıfından türememiştir
  User user5 = AdminUser(); // bu şekilde bir atama yapılabildi çünkü AdminUser User sınıfından türemiştir
  User user6 = ReadOnlyUser(); // bu şekilde bir atama yapılabildi çünkü NormalUser User sınıfından türemiştir

  List<User> users = [];
  users.add(user1); // bu şekilde bir atama yapılabildi çünkü User sınıfından türemiştir
  users.add(user2); // bu şekilde bir atama yapılabildi çünkü NormalUser User sınıfından türemiştir
  users.add(user3); // bu şekilde bir atama yapılabildi çünkü ReadOnlyUser User sınıfından türemiştir
  users.add(user4); // bu şekilde bir atama yapılabildi çünkü AdminUser User sınıfından türemiştir
  users.add(user5); // bu şekilde bir atama yapılabildi çünkü AdminUser User sınıfından türemiştir
  users.add(user6); // bu şekilde bir atama yapılabildi çünkü ReadOnlyUser User sınıfından türemiştir ve hepsi User sınıfından türemiştir.

  test(user1);
  test(user2);
  test(user3);
  test(user4);
  test(user5);
  test(user6);
  
}

void test(User kullanici) { // buraya User türünde bir kullanıcı gönderdik
  kullanici.login();
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

class ReadOnlyUser extends NormalUser {
  
  void adiniSoyle() {
    print("Ben readOnlyUser sınıfından geliyorum yani sadece okuyabilirim"); 
  }
  @override
  void login() {
    print("readOnlyUser girişi yapıldı");
  }
}

class AdminUser extends User {
  @override
  void login() {
    print("Admin kullanıcı girişi yapıldı");
  }

  void toplamKullaniciSayisi() {
    print("Toplam kullanıcı sayısı: 100");
  }
}