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

void main() {
  Student student = Student();

  student.name = 'furqan';
  student.age = 21;
  student.grade = 'A';
  student.studentID = 89;

  student.displayinfo();
  student.updategrade('A+');
}

class Student {
  String? name;
  int? age;
  String? grade;
  int? studentID;

  void displayinfo() {
    print('student name : $name');
    print(' Age : $age');
    print('Grade  : $grade');
    print('student ID : $studentID');
    print('_____________________');
  }

  void updategrade(String newgrade) {
    grade = newgrade;
    print('grade updated to $newgrade for $name');
  }
}
