 void main(List<String> args) {
  int sayi1 = 12;
  num sayi2 = 14;
  var sayi3 = 16;

  if(sayi1 > sayi2){
    print("$sayi1 sayısı $sayi2'den büyüktür.");
  }
  else if(sayi1 < sayi2){
    print("$sayi1 sayısı $sayi2'den küçüktür.");
  }
  else{
    print("$sayi1 $sayi2'ye eşittir.");
  }

  int notDegeri = 93;
  if(notDegeri >= 90 && notDegeri <= 100){
    print(" Notunuz : AA");
  }
  else if(notDegeri >= 80 && notDegeri < 90){
    print(" Notunuz : BA");
  }
  else if(notDegeri >= 70 && notDegeri < 80){
    print(" Notunuz : BB");
  }
  else if(notDegeri >= 60 && notDegeri < 70){
    print(" Notunuz : CB");
  }
  else if(notDegeri >= 50 && notDegeri < 60){
    print(" Notunuz : CC");
  }
  else if(notDegeri >= 40 && notDegeri < 50){
    print(" Notunuz : DC");
  }
  else if(notDegeri >= 30 && notDegeri < 40){
    print(" Notunuz : DD");
  }
  else if(notDegeri >= 20 && notDegeri < 30){
    print(" Notunuz : FD");
  }
  else if(notDegeri <0 || notDegeri > 100){
    print(" Notunuz : 0-100 arasında olmalıdır. Lütfen kontrol ediniz.");
  }
  else{
    print(" Notunuz : FF");
  }
  
  
}  