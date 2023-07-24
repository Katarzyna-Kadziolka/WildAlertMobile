import '../../../common/entities/Animal.dart';

class AlertState {
  final double latitude;
  final double longitude;
  final Animal animal;
  final String comments;

  const AlertState({this.latitude = 52.2399198, this.longitude = 21.0193942, this.animal = Animal.boar, this.comments = ""});

  AlertState copyWith({double? latitude, double? longitude, Animal? animal, String? comments}) {
    return AlertState(
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        animal: animal ?? this.animal,
        comments: comments ?? this.comments
    );
  }
}