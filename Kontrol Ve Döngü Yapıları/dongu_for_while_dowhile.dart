void main(List<String> args) {
  // Döngü Yapıları For, While, Do While

  // For Döngüsü
  for (int i = 0; i < 10; i++) {
    if(i %2 == 0){
      print("Çift sayılar: $i");
    }
  }
  List isimListesi = ["Ahmet", "Mehmet", "Ali", "Veli", "Ayşe", "Fatma"];
  // for(String gecici in isimListesi){
  //   print("İsimler: $gecici");
  // }

  for(int i = 0; i < isimListesi.length; i++){ // yukardaki yorum satırı da aynısıdır.
    print("İsimler: ${isimListesi[i]}");
  }

  // While Döngüsü
  int sayac = 0;
  while(sayac < 3){
    print("Sayac: $sayac");
    sayac++;
  }

  // Do While Döngüsü // en az bir kere çalışır. 
  int sayac2 = 0;
  do{ // do döngüsü en az bir kere çalışır. while döngüsü ise hiç çalışmazsa bir kere bile çalışmaz. do bölümünde bir şey yaparsak en az
  // bir kere çalışır. sonra while döngüsüne bakar. while döngüsü true ise tekrar do döngüsüne girer. false ise döngüden çıkar.
    print("Sayac: $sayac2");
    sayac2++;
    
  }while(sayac2 < 5);

  // Break ve Continue
  for (int i = 0; i < 10; i++) {
    if(i == 5){
      break; // break döngüyü sonlandırır. continue ise döngüyü sonlandırmaz. sadece o anki işlemi atlar.
    }
    print("Sayılar: $i");
  }
  for (int i = 0; i < 10; i++) {
    if(i == 5){
      continue; // break döngüyü sonlandırır. continue ise döngüyü sonlandırmaz. sadece o anki işlemi atlar.
    }
    print("Sayılar: $i");
  }
   distakiDongu :for (int i = 1; i < 10; i++) {
    for (int j = 1; j < 10; j++) {
      print("$i x $j = ${i*j}");

      if(i ==2){
        break distakiDongu;
      }
    }
    
  }


}