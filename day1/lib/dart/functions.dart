void main() {
  display(1, "Keshav Bhandari");
  displayNamed(id: 1, name: "Keshav Bhandari");
  displayOptional("keshav bhandari");
  displayPositionalAndNamed("orange", price: 200);
  double price = calculate(price: 99);
  print(price);
  print(getUser());
}

Map<String, dynamic> getUser() {
  return {"id": 1, 'name': "keshav Bhandari"};
}

double calculate({double price}) {
  double incrAmount = 9.99;
  double newAmount = price + 9.99;
  return newAmount;
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

void displayPositionalAndNamed(String itemName, {double price}) {
  print("Price of $itemName is Rs.$price.");
}
