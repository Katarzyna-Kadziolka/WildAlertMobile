import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wild_alert_mobile/features/map/bloc/map_events.dart';
import 'package:wild_alert_mobile/features/map/bloc/map_state.dart';

class MapBlocs extends Bloc<MapEvents, MapState> {
  MapBlocs():super(const MapState()) {
    on<LatitudeEvent>(_latitudeEvent);
    on<LongitudeEvent>(_longitudeEvent);
  }

  void _latitudeEvent(LatitudeEvent event, Emitter<MapState> emit) {
    emit(state.copyWith(latitude: event.latitude));
  }

  void _longitudeEvent(LongitudeEvent event, Emitter<MapState> emit) {
    emit(state.copyWith(longitude: event.longitude));
  }
}