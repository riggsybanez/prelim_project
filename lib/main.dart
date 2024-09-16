import 'dart:io';
import 'package:riverpod/riverpod.dart';
import 'package:prelim_project/global_providers.dart';

void main() {
  final container = ProviderContainer();
  final menuItemService = container.read(menuitemServiceProvider);
  final reviewService = container.read(reviewServiceProvider);

  while (true) {
    print('Restaurant Menu and Review Management System');
    print('1. Add menu item');
    print('2. View menu items');
    print('3. Add review');
    print('4. View reviews');
    print('5. Exit');
    print('Enter your choice: ');

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        print('Enter menu item name: ');
        String? name = stdin.readLineSync();
        print('Enter menu item description: ');
        String? description = stdin.readLineSync();
        print('Enter menu item price: ');
        double? price = double.tryParse(stdin.readLineSync()!);

        if (name != null && description != null && price != null) {
          menuItemService.addMenuItem(name, description, price);
        } else {
          print('Invalid input. Please try again.');
        }
        break;
      case '2':
        menuItemService.viewMenuItems();
        break;
      case '3':
        print('Enter review rating: ');
        double? rating = double.tryParse(stdin.readLineSync()!);
        print('Enter review comment: ');
        String? comment = stdin.readLineSync();

        if (comment != null && rating != null) {
          reviewService.addReview(comment, rating);
        } else {
          print('Invalid input. Please try again.');
        }
        break;
      case '4':
        reviewService.viewReviews();
        break;
      case '5':
        print('Exiting...');
        return;
      default:
        print('Invalid choice. Please try again.');
        break;
    }
  }
}
