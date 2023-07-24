abstract class AlertEvents {
  const AlertEvents();
}

class LatitudeEvent extends AlertEvents {
  final double latitude;
  const LatitudeEvent(this.latitude);
}

class LongitudeEvent extends AlertEvents {
  final double longitude;
  const LongitudeEvent(this.longitude);
}

class TypeEvent extends AlertEvents {
  final String type;
  const TypeEvent(this.type);
}

class DescriptionEvent extends AlertEvents {
  final String description;
  const DescriptionEvent(this.description);
}