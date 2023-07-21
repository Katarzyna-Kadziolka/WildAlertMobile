abstract class MapEvents {
  const MapEvents();
}

class LatitudeEvent extends MapEvents {
  final double latitude;
  const LatitudeEvent(this.latitude);
}

class LongitudeEvent extends MapEvents {
  final double longitude;
  const LongitudeEvent(this.longitude);
}