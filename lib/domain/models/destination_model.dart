// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class DestinationModel {
  String imageUrl;
  String name;
  String location;
  double rating;
  DestinationModel({
    required this.imageUrl,
    required this.name,
    required this.location,
    required this.rating,
  });

  DestinationModel copyWith({
    String? imageUrl,
    String? name,
    String? location,
    double? rating,
  }) {
    return DestinationModel(
      imageUrl: imageUrl ?? this.imageUrl,
      name: name ?? this.name,
      location: location ?? this.location,
      rating: rating ?? this.rating,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageUrl': imageUrl,
      'name': name,
      'location': location,
      'rating': rating,
    };
  }

  factory DestinationModel.fromMap(Map<String, dynamic> map) {
    return DestinationModel(
      imageUrl: map['imageUrl'] as String,
      name: map['name'] as String,
      location: map['location'] as String,
      rating: map['rating'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory DestinationModel.fromJson(String source) =>
      DestinationModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'DestinationModel(imageUrl: $imageUrl, name: $name, location: $location, rating: $rating)';
  }

  @override
  bool operator ==(covariant DestinationModel other) {
    if (identical(this, other)) return true;

    return other.imageUrl == imageUrl &&
        other.name == name &&
        other.location == location &&
        other.rating == rating;
  }

  @override
  int get hashCode {
    return imageUrl.hashCode ^
        name.hashCode ^
        location.hashCode ^
        rating.hashCode;
  }
}

List<DestinationModel> listOfDestinations = [
  DestinationModel(
    imageUrl: 'assets/image_destination6.png',
    name: 'Danau Beratan',
    location: 'Singaraja',
    rating: 4.5,
  ),
  DestinationModel(
    imageUrl: 'assets/image_destination7.png',
    name: 'Sydney Opera House',
    location: 'Australia',
    rating: 4.7,
  ),
  DestinationModel(
    imageUrl: 'assets/image_destination8.png',
    name: 'Roma',
    location: 'Italy',
    rating: 4.8,
  ),
  DestinationModel(
    imageUrl: 'assets/image_destination9.png',
    name: 'Payung Teduh',
    location: 'Singapura',
    rating: 4.5,
  ),
  DestinationModel(
    imageUrl: 'assets/image_destination10.png',
    name: 'Hill Hey',
    location: 'Monaco',
    rating: 4.7,
  ),
];
