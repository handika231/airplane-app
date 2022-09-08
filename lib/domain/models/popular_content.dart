class PopularContent {
  String? imageUrl;
  String? title;
  String? subTitle;
  double? rating;
  PopularContent({
    this.imageUrl,
    this.title,
    this.subTitle,
    this.rating,
  });
}

List<PopularContent> listOfContent = [
  PopularContent(
    imageUrl: 'assets/image_destination1.png',
    title: 'Lake Ciliwung',
    subTitle: 'Tangerang',
    rating: 4.8,
  ),
  PopularContent(
    imageUrl: 'assets/image_destination2.png',
    title: 'Lake Ciliwung',
    subTitle: 'Tangerang',
    rating: 4.8,
  ),
  PopularContent(
    imageUrl: 'assets/image_destination3.png',
    title: 'Lake Ciliwung',
    subTitle: 'Tangerang',
    rating: 4.8,
  ),
  PopularContent(
    imageUrl: 'assets/image_destination4.png',
    title: 'Lake Ciliwung',
    subTitle: 'Tangerang',
    rating: 4.8,
  ),
];
