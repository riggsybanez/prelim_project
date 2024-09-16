import 'package:riverpod/riverpod.dart';
import 'package:prelim_project/models/review.dart';

class ReviewService {
  final Ref container;
  final List<Review> reviews = [];

  ReviewService(this.container);

  void addReview(String comment, double rating) {
    reviews.add(Review(comment, rating));
    print('Rating: $rating added to reviews.');
  }

  void viewReviews() {
    if (reviews.isEmpty) {
      print('Reviews are currently empty.');
    } else {
      print('Reviews: ');
      for (var _review in reviews) {
        print(_review);
      }
    }
  }

  List<Review> get reviewsList => reviews;
}
