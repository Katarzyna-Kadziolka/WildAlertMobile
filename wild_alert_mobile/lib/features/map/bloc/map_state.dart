class MapState {
  final double latitude;
  final double longitude;

  const MapState({this.latitude = 45.521563, this.longitude = -122.677433});

  MapState copyWith({double? latitude, double? longitude}) {
    return MapState(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude
    );
  }
}
