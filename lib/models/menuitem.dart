class MenuItem {
  String name;
  String description;
  double price;

  MenuItem(this.name, this.description, this.price);

  @override
  String toString() {
    return '$name - \$$price \n$description\n';
  }
}
