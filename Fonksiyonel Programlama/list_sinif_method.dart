void main(List<String> args) {
  //List Sınıfı ve Metodları

  Person person1 = Person(1, "Ahmet");
  Student person2 = Student(2, "Mehmet",6);
  Person person3 = Student(3, "Ayşe",8);
  var person4 = Person(4, "Fatma");
  var person5 = Student(5, "Ali",4);

List<Person> personList = [person1, person2, person3, person4, person5]; // Tüm öğrencileri tekl bir sınıf altında topladık.

//sort metodu
personList.sort((ogr1,ogr2) {
  if (ogr1.id > ogr2.id) {
    return 1;
  } else if (ogr1.id < ogr2.id) {
    return -1;
  } else {
    return 0;
  }
}); // Listeyi id ye göre sıraladık. sort metodu ile sıralama yapabiliriz.
print(personList);



//map yapısı
var mapIterable = personList.map((Person e) =>"Map ${e.name}"); // Listeyi map yapısına çevirir.
print(mapIterable); // sonuç : (Map Ahmet, Map Mehmet, Map Ayşe, Map Fatma, Map Ali)



personList.add(person4);// Listeye eleman ekledik.
personList.addAll([person1,person2]); // Listeye birden fazla eleman ekledik.
print(personList);
bool sonuc =personList.any((Person element) => element.id > 10); // Listede herhangi bir eleman var mı yok mu kontrol eder.
print(sonuc);
Map<int,Person> yeniMap = personList.asMap(); // Listeyi map haline getirir.
print(yeniMap);
print(personList.contains(person1)); // Listede eleman var mı yok mu kontrol eder. = contains
print(personList.elementAt(2)); // Listede verilen index deki elemanı getirir.
bool sonuc2 = personList.every((Person element) => element.id < 10); // Listede her elemanın belirtilen koşula uyup uymadığını kontrol eder.
print(sonuc2);
print(personList.firstWhere((Person element) => element.id == 1)); // Listede belirtilen koşula uygun ilk elemanı getirir. = firstWhere
print(personList.lastWhere((Person element) => element.id == 1)); // Listede belirtilen koşula uygun son elemanı getirir. = lastWhere




}

class Person {
  int id = 0;
  String name = "";
  Person(this.id, this.name);
  @override
  String toString() {
    return "id: $id, name: $name";
  }
}
class Student extends Person {
   int alinanDersSayisi = 0;
  Student(int id, String name, this.alinanDersSayisi) : super(id, name);
  @override
  String toString() {
    return "id: $id, name: $name, Alınan Ders Sayısı: $alinanDersSayisi";
  }
}