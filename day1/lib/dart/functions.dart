void main() {
  display(1, "Keshav Bhandari");
  displayNamed(id: 1, name: "Keshav Bhandari");
  displayOptional("keshav bhandari");
  displayPositionalAndNamed();
}

void display(int id, String name) {
  print("My name is $name and my id is $id.");
}

void displayNamed({int id, String name}) {
  print("My name is $name. My id is $id");
}

void displayOptional([String name, int id]) {
  print("My name is $name. My id is $id");
}

void displayPositionalAndNamed() {}
