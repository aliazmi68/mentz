part of 'location_bloc.dart';

abstract class LocationState extends Equatable {
  final List<Location> locations;

  const LocationState({
    required this.locations
  });

  @override
  List<Object?> get props => [locations];
}

class LocationInitial extends LocationState {
  const LocationInitial({required super.locations});
}

class LocationLoading extends LocationState {
  const LocationLoading({required super.locations});
}

class LocationLoaded extends LocationState {
  const LocationLoaded({required super.locations});
  
  @override
  List<Object?> get props => [locations];
}