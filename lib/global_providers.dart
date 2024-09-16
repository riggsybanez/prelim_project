import 'package:riverpod/riverpod.dart';

import 'package:prelim_project/services/menuitem_service.dart';
import 'package:prelim_project/services/review_service.dart';

final menuitemServiceProvider = Provider((ref) => MenuItemService(ref));
final reviewServiceProvider = Provider((ref) => ReviewService(ref));
