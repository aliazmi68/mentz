import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentz/data/model/location.dart';
import 'package:mentz/services/api_service.dart';

part 'location_event.dart';
part 'location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final ApiService apiService = ApiService();
  
  LocationBloc() : super(const LocationInitial(locations: [])) {

    on<GetLocations>((event, emit) async {
      emit(const LocationLoading(locations: []));

      await apiService
        .get(event.query)
        .then((location) {
          emit(LocationLoaded(locations: location));
        });
    });
  }

}