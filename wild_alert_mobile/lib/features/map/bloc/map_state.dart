class MapState {
  final double latitude;
  final double longitude;

  const MapState({this.latitude = 52.2399198, this.longitude = 21.0193942});

  MapState copyWith({double? latitude, double? longitude}) {
    return MapState(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude
    );
  }
}
