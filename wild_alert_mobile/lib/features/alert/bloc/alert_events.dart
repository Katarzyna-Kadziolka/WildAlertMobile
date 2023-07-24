import 'package:wild_alert_mobile/common/entities/Animal.dart';

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

class AnimalEvent extends AlertEvents {
  final Animal animal;
  const AnimalEvent(this.animal);
}

class CommentsEvent extends AlertEvents {
  final String comments;
  const CommentsEvent(this.comments);
}