// void main() {
//   int? age;
//   String name = '';

//   print(name);
//   print(age);

//   if (name == null) {
//     print('name is null');
//   }

//   age = 20;
//   print(age);
// }

//classes and objects

// void main() {
//   Person person = Person();
//   Person person1 = Person();

//   person.name = "furqan";
//   person.fathername = "azeem khan";
//   person.age = 21;
//   person.isstudent = true;
//   person.displayinfo();

//   person1.name = "john";
//   person1.fathername = "david";
//   person1.age = 31;
//   person1.isstudent = false;
//   person1.displayinfo();
// }

// class Person {
//   String? name;
//   String? fathername;
//   int? age;
//   bool? isstudent;

//   void displayinfo() {
//     print('my name is $name');
//     print('my age is $age');
//     print('my father is $fathername');

//     print(' is student $isstudent');
//   }
// }

//classes

// void main() {
//   Student student = Student();
//   Student khan = Student();

//   student.name = 'furqan';
//   student.age = 21;
//   student.grade = 'A';
//   student.studentID = 89;

//   student.displayinfo();
//   student.updategrade('A+');

//   //for another Object

//   khan.name = 'fk';
//   khan.displayinfo();
// }

// class Student {
//   String? name;
//   int? age;
//   String? grade;
//   int? studentID;

//   void displayinfo() {
//     print('student name : $name');
//     print(' Age : $age');
//     print('Grade  : $grade');
//     print('student ID : $studentID');
//     print('_____________________');
//   }

//   void updategrade(String newgrade) {
//     grade = newgrade;
//     print('grade updated to $newgrade for $name');
//   }
// }

// Error handling and null check

// void main() {
//   Area area = Area();

//   area.calculateREctangleArea(5, 5);
// }

// class Area {
//   double? width;
//   double? height;

//   //Method to calculate area of rectangle
//   void calculateREctangleArea(double width, double height) {
//     try {
//       // double areaOfRectangle = width ?? 0 * (height ?? 0);
//       double areaOfRectangle = width * height;
//       print('area :' + areaOfRectangle.toString());
//     } catch (e) {
//       print(e);
//     }
//   }
// }

// Constructors

// void main() {
//   List<Student> name = [
//     Student("fk", 21),
//     Student("khan", 25),
//     Student("farooq", 31),
//   ];

//   name.forEach(
//     (element) {
//       print('name is ${element.name} and age is ${element.age}');
//     },
//   );
// }

// class Student {
//   String? name;
//   int? age;

//   Student(name, age) {
//     this.name = name;
//     this.age = age;
//   }

//   void displayInfo() {
//     print('______________');
//     print("Name: $name");
//     print("Age: $age");
//     print('______________');
//   }
// }

// Library management system

// void main() {
//   Book book = Book('Got', 'harger lee', true, '32345432');
//   Book book1 = Book('1984', 'barger lee', true, '43263333423');

//   Library library = Library();
//   library.addBook(book);
//   library.addBook(book1);

//   Members members = Members('0012', 'fruqan');

//   library.loansbook(book1, members);
//   library.listBook();
//   library.listloanBook();
// }

// class Book {
//   String title;
//   String author;
//   String isbn;
//   bool isAvialable;
//   Book(this.title, this.author, this.isAvialable, this.isbn);
// }

// class Library {
//   List<Book> books = [];
//   List<Loan> loans = [];

//   void loansbook(Book book, Members member) {
//     if (book.isAvialable) {
//       book.isAvialable = false;
//       loans.add(Loan(book, DateTime.now(), member));
//     } else {
//       print('${book.title} is not available');
//     }
//   }

//   void addBook(Book book) {
//     books.add(book);
//   }

//   void listBook() {
//     print('-----List All books in Library-----');
//     for (var book in books) {
//       print(
//           'title: ${book.title}, Author:  ${book.author}, ISBN: ${book.isbn}, Available: ${book.isAvialable}');
//     }
//   }

//   void listloanBook() {
//     print('-----List All books in Library-----');
//     for (var loan in loans) {
//       print(
//           'title: ${loan.book.title}, Author:  ${loan.book.author}, ISBN: ${loan.book.isbn}, Available: ${loan.book.isAvialable}');
//     }
//   }
// }

// class Members {
//   String name;
//   String memberid;

//   Members(this.memberid, this.name);
// }

// class Loan {
//   Book book;
//   Members member;
//   DateTime loanDate;
//   DateTime? returnDate;

//   Loan(this.book, this.loanDate, this.member, [this.returnDate]);

//   void returnBook() {
//     returnDate = DateTime.now();
//     book.isAvialable = true;
//   }
// }

// Encapsulation

void main() {
  Person person = Person('furqan', 21);
  person.displayinfo();
}

class Person {
  String name;
  int age;

  //Constructor
  Person(this.name, this.age);

  //Method to display person Details
  void displayinfo() {
    print('Name: $name, Age: $age');
  }
}
