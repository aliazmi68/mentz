import 'package:flutter/material.dart';
import 'package:mentz/presentation/location_list.dart';
import 'package:mentz/presentation/search.dart';

class LocationView extends StatelessWidget {
  const LocationView({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.all(10),
        child: GestureDetector(
          // Dismissing the keyboard on tap
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: const Column(
            children: [
              Search(),
              LocationList()
            ],
          ),
        ),
      ),
    );
  }
  
}