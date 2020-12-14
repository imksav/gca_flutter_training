void main() {
  Student s1 = new Student();
  s1.display();
  Student.init();
}

class Student {
  void display() {
    print("From class Students.");
  }

  static double rate;
  static double init() {
    print("Inatilazing......");
    rate = 5.99;
    _finish();
    return rate;
  }

  static void _finish() {
    print("Finished....");
    print(rate);
  }
}
