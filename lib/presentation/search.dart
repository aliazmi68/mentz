import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentz/bloc/location_bloc/location_bloc.dart';

class Search extends StatelessWidget{
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    final LocationBloc locationBloc = BlocProvider.of<LocationBloc>(context); 

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextField(
        onSubmitted: (value) {
          if(value.isNotEmpty){
            locationBloc.add(GetLocations(query: value));
          }
        },
        decoration: const InputDecoration(
          labelText: 'Search',
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }

}