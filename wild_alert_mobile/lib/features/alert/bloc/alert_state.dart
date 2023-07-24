class AlertState {
  final double latitude;
  final double longitude;
  final String type;
  final String description;

  const AlertState({this.latitude = 52.2399198, this.longitude = 21.0193942, this.type = "", this.description = ""});

  AlertState copyWith({double? latitude, double? longitude, String? type, String? description}) {
    return AlertState(
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        type: type ?? this.type,
        description: description ?? this.description
    );
  }
}