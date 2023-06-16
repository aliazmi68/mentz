import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentz/bloc/location_bloc/location_bloc.dart';

class LocationCounter extends StatelessWidget{
  const LocationCounter({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<LocationBloc, LocationState>(
        builder: (context, locationState) {
          if(locationState is LocationInitial) {
            return const Text('');
          } else {
            return RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: '${locationState.locations.length} ', 
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    )
                  ),
                  const TextSpan(
                    text: 'results found', 
                    style: TextStyle(
                      color: Colors.black
                    )
                  ),
                ],
              ),
            );
          }
        }
      ),
    );
  }
  
}