class Review {
  String comment;
  double rating;

  Review(this.comment, this.rating);

  @override
  String toString() {
    return 'Rating: $rating \n$comment\n';
  }
}
