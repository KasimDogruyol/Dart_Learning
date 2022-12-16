void main(List<String> args) {
  // 1. Soru
  // 3 tane double değişken oluşturup bunların ortalamasını hesaplayan programı yazınız.
  //2. Soru
  // Kenarlarını girdiğiniz üçgenin çeşidini bulan programı yazınız.
  // 3. Soru
  // Vize ve final notlarını girdiğiniz öğrencinin not ortalamasını hesaplayan programı yazınız.
  // (Vize notunun %40'u final notunun %60'ini alarak hesaplayınız.) geçme notu 50'dir.

  // 4. Soru
  // Kendi adınızı ekrana 5 kere yazdıran programı  tüm döngü yapıları ile yazınız.
  // 5. Soru 1 den 100 e kadar olan sayıların ve 15 e tam bölünen sayıların karelerini bulan programı yazınız
  // 6. Soru
  // Tanımlanan int bir sayının faktöriyelini hesaplayan programı yazınız.

  // 1. Soru
  double sayi1 = 5.5;
  double sayi2 = 6.5;
  double sayi3 = 7.5;
  double ortalama = (sayi1 + sayi2 + sayi3) / 3;
  print("Ortalama: $ortalama");

  // 2. Soru
  var kenar1 = 8;
  var kenar2 = 5;
  var kenar3 = 4;
  if (kenar1 == kenar2 && kenar2 == kenar3) {
    print("Eşkenar üçgen");
  } else if (kenar1 == kenar2 || kenar2 == kenar3 || kenar1 == kenar3) {
    print("İkizkenar üçgen");
  } else {
    print("Çeşitkenar üçgen");
  }

  // 3. Soru
  var vize = 50;
  var finalNotu = 60;
  var ortalamaNot = (vize * 0.4) + (finalNotu * 0.6);
  if (ortalamaNot >= 50) {
    print("Geçti");
  } else {
    print("Kaldı");
  }

  // 4. Soru
  var i = 0;
  var ad = "Kasım";
  for (var i = 0; i < 5; i++) {
    print(ad);
  }

  while(i < 5){
    print(ad);
    i++;
  }
  do{
    print(ad);
    i++;}while(i < 5);
  
  // 5. Soru
  for (var i = 1; i <= 100; i++) {
    if (i % 15 == 0) {
      print("$i sayısının karesi: ${i * i}");
    }
  }

  // 6. Soru
  var sayi = 5;
  var faktoriyel = 1;
  for (var i = 1; i <= sayi; i++) { // 1 2 3 4 5
    faktoriyel *= i; // 1 2 6 24 120
  }
}