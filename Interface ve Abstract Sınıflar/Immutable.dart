void main(List<String> args) {
  // Immutable Sınıf oluşturma
  // Immutable sınıfların özellikleri değiştirilemez. Immutable değimez demektir.
   const Student student = Student(1, "Ahmet");
   const Student student2 = Student(1, "Ahmet");
  // student.id = 2; // Hata verir. Çünkü id değiştirilemez.
  var student3 =  const Student(1, "Ahmet");
  print(student.id);

  if (student == student2) { //  eşit değil çıktısını verir. //const ile oluşturduğumuz sınıfların referansları eşit olur. eşittir çıktısını verir.
    print("Eşit");
  } else {
    print("Eşit değil");
  }
}

class Student {
  final int id;
  final String name;

  const Student(this.id, this.name);
}