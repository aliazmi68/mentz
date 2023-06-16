import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentz/bloc/location_bloc/location_bloc.dart';
import 'package:mentz/presentation/location_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 72, 161, 243)),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (_) => LocationBloc(),
        child: const LocationView(),
      ),
    );
  }
}
