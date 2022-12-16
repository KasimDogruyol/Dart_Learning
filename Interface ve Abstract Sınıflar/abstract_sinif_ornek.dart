void main(List<String> args) {
  // Örnek: Abstract Sınıflar ve Methodlar
  VeriTabani oracleDb = OracleDb();
  oracleDb.userSave();
  oracleDb.userDelete();

  userGuncelle(oracleDb);
}
void userGuncelle(VeriTabani veriTabani) {
  veriTabani.userUpdate();
}

abstract class VeriTabani {
  void userSave();
  void userDelete();
  void userUpdate();
}

class OracleDb extends VeriTabani {
  @override
  void userDelete() {
    print("OracleDb userDelete");
  }

  @override
  void userSave() {
    print("OracleDb userSave");
  }

  @override
  void userUpdate() {
    print("OracleDb userUpdate");
  }
}

class FirebaseDb extends VeriTabani {
  @override
  void userDelete() {
    print("FirebaseDb userDelete");
  }

  @override
  void userSave() {
    print("FirebaseDb userSave");
  }

  @override
  void userUpdate() {
    print("FirebaseDb userUpdate");
  }
}