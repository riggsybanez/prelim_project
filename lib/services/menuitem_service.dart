import 'package:riverpod/riverpod.dart';
import 'package:prelim_project/models/menuitem.dart';

class MenuItemService {
  final Ref container;
  final List<MenuItem> menuItems = [];

  MenuItemService(this.container);

  void addMenuItem(String name, String description, double price) {
    menuItems.add(MenuItem(name, description, price));
    print('$name (Price: \$$price) added to menu.');
  }

  void viewMenuItems() {
    if (menuItems.isEmpty) {
      print('Menu is currently empty.');
    } else {
      print('Menu: ');
      for (var _menuItem in menuItems) {
        print(_menuItem);
      }
    }
  }

  List<MenuItem> get menuItemsList => menuItems;
}
