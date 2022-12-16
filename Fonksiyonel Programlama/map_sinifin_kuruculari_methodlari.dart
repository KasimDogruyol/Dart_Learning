void main(List<String> args) {
  // Map Sınıfının Kurucuları ve Methodları
  // Map sınıfı, anahtar ve değer çiftlerini tutan bir sınıftır.
  Map<String, dynamic> map = Map(); //bu şekilde veya aşağıdaki gibi oluşturulabilir.
  Map<String, int> map2 = {};//bu şekilde de oluşturulabilir.
  var map3 = <String, dynamic>{}; //bu şekilde de oluşturulabilir.

  map["id"] = 1;
  map["name"] = "Ahmet";
  map["dersSayisi"] = 5;

  var yeniMap = Map.from({'deger': 'yeni'}); // Map.from ile yeni bir map oluşturduk.
  //entries : Map sınıfının öğelerini döndürür. key ve value değerlerini döndürür.
  //keys : Map sınıfının anahtarlarını döndürür.
  //values : Map sınıfının değerlerini döndürür.
  var mapFromEntries = Map.fromEntries(map.entries); // Map.fromEntries ile yeni bir map oluşturduk.
  print(mapFromEntries);
  var liste = [1, 2, 3, 4, 5];
 var mapFromIterable = Map.fromIterable(liste); // Bu method ile iterable nesnelerden yeni map oluşturabiliriz.
 print(mapFromIterable);// sonuç: {1: 1, 2: 2, 3: 3, 4: 4, 5: 5}
 var mapFromIterable2 = Map<String,String>.fromIterable(liste,key:( item){
    return "$item".toString();
 },value: (item) => "${item *2}");
  print(mapFromIterable2);// sonuç: {1: 2, 2: 4, 3: 6, 4: 8, 5: 10} // value değerini 2 ile çarp getir key değerini git mapin her elemanını dön ve getir dedik

  map.update('id', (value) => value * 3); // update ile mapin içindeki değeri güncelleyebiliriz. id değerini 3 ile çarp dedik.
  map.update('id_yeni', (value) => value * 2, ifAbsent: () => 10); // id_yeni keyi yoksa oluştururur değeri yoksa 10 değerini atadık.
  print(map); // sonuç: {id: 3, name: Ahmet, dersSayisi: 5, id_yeni: 10}
  map.putIfAbsent("soyisim", () => "Doğruyol"); // putIfAbsent ile mapin içinde yoksa oluştururuz.varsa koymaz soyisim keyi yoksa oluştururuz değeri yoksa "Doğruyol" değerini atadık.

}