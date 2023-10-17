import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/screens/provider_screen.dart';
import 'package:provider_demo/providers/provider_model.dart';

void main() => runApp(const MyApp());

// This is the main widget of the application
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This widget provides the CounterModel to its descendants
    return  ChangeNotifierProvider(
      create: (context) => CounterModel(), // Provide the CounterModel
      child: const MaterialApp(
        home: ProviderScreen(),
      ),
    );
  }
}
