import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'Screens/riverpod_screen.dart';


void main() {
  runApp(const MyApp());
}


      
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riverpod Counter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      /// The main entry point of the application.
      /// 
      /// It sets up the [RiverPodScreen] widget as the home screen of the app
      /// wrapped in a [ProviderScope] to provide access to the app's state.
      home: const ProviderScope(
        child: RiverPodScreen(),
      ),
    );
  }
}

