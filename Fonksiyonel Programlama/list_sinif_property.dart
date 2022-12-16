void main(List<String> args) {
  // List Sınıfının Kurucuları ve Propertyleri
  Person person1 = Person(1, "Ahmet");
  Student person2 = Student(2, "Mehmet",6);
  Person person3 = Student(3, "Ayşe",8);
  var person4 = Person(4, "Fatma");
  var person5 = Student(5, "Ali",4);

  List<Person> personList = [person1, person2, person3, person4, person5]; // Tüm öğrencileri tekl bir sınıf altında topladık.
  var liste1 = List.filled(5, 0); // 5 elemanlı  auto 0 değerli bir liste oluşturduk.
  var liste2 = List<Student>.filled(5, Student(0, "",0)); // 5 elemanlı  id 0 ismi "" alınan ders sayısı 0 olan bir liste oluşturduk.
  var liseFrom = List<Student>.from(personList); // Tüm öğrenicileri liste haline getirdik.
  var listeOf = List<Student>.of(personList.whereType<Student>()); // Tüm öğrenicileri gez type ı student olanları liste haline getirdik.
  var listeGenerate = List<Student>.generate(5, (index) => Student(index, "$index",index *2)); // 5 elemanlı  index değerini id olarak  ismi "Ahmet" alınan ders sayısı index olan bir liste oluşturduk.
  var degistirilemez = List.unmodifiable(personList); // Değiştirilemez bir liste oluşturduk.
  var degistirilebilir = List.of(personList); // Değiştirilebilir bir liste oluşturduk.
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