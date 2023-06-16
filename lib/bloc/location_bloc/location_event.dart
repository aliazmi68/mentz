part of 'location_bloc.dart';

abstract class LocationEvent extends Equatable{
  final String query;

  const LocationEvent({
    required this.query
  });

  @override
  List<Object?> get props => [query];
}

class GetLocations extends LocationEvent {
  const GetLocations({required super.query,});
}