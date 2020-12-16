void main() {
  A a = A(greeting: "Good evening!");
  Rectangle r = Rectangle(height: 10, width: 30);
  r.displayArear();
}

class A {
  A({String greeting}) {
    // print(greeting);
    B b = B(greeting);
    b.display();
  }
}

class B {
  String greeting;
  B(String argument) {
    greeting = argument;
  }
  void display() {
    print(greeting + " from display() of class B");
  }
}

class Rectangle {
  double height, width;
  Rectangle({double height, double width}) {
    this.height = height;
    this.width = width;
  }
  displayArear() {
    print(height * width);
  }
}
