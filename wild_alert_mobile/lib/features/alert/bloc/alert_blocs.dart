import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wild_alert_mobile/features/alert/bloc/alert_events.dart';
import 'package:wild_alert_mobile/features/alert/bloc/alert_state.dart';

class AlertBlocs extends Bloc<AlertEvents, AlertState> {
  AlertBlocs(): super(const AlertState()) {
    on<LatitudeEvent>(_latitudeEvent);
    on<LongitudeEvent>(_longitudeEvent);
    on<AnimalEvent>(_animalEvent);
    on<CommentsEvent>(_commentsEvent);
  }

  void _latitudeEvent(LatitudeEvent event, Emitter<AlertState> emit) {
    emit(state.copyWith(latitude: event.latitude));
  }

  void _longitudeEvent(LongitudeEvent event, Emitter<AlertState> emit) {
    emit(state.copyWith(longitude: event.longitude));
  }

  void _animalEvent(AnimalEvent event, Emitter<AlertState> emit) {
    emit(state.copyWith(animal: event.animal));
  }

  void _commentsEvent(CommentsEvent event, Emitter<AlertState> emit) {
    emit(state.copyWith(comments: event.comments));
  }
}