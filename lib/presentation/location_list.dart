import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentz/data/model/location.dart';
import 'package:mentz/presentation/location_counter.dart';
import 'package:mentz/presentation/location_list_item.dart';

import '../bloc/location_bloc/location_bloc.dart';

class LocationList extends StatelessWidget{
  const LocationList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<LocationBloc, LocationState>(
        builder: (context, locationState) {
          if(locationState is LocationLoading) {
            return const Center(
              child: CircularProgressIndicator()
            );
          } else {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const LocationCounter(),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: locationState.locations.length,
                    itemBuilder: (BuildContext listContext, int index) {
                      Location location = locationState.locations[index];
                      return LocationListItem(location: location,);
                    }
                  ),
                ),
              ],
            );
          }
        }
      )
    );
  }

}