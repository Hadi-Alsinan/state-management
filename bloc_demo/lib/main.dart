// Importing necessary packages and files
import 'package:bloc_demo/providers/bloc_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Screens/bloc_screen.dart';

// Main function of the app
void main() {
  runApp(const MyApp());
}

// MyApp class which is a stateless widget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Build method which returns the MaterialApp widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BLoC Counter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // BlocProvider widget which provides the CounterBloc to the BloCScreen widget
      home: BlocProvider(
        create: (context) => CounterBloc(),
        child: const BloCScreen(),
      ),
    );
  }
}
