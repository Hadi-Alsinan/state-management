import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../providers/bloc_events.dart';

/// A screen that displays a counter and allows the user to increment or decrement it using BLoC.
class BloCScreen extends StatelessWidget {
  const BloCScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the CounterBloc from the context
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('BLoC Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Display the current count using BlocBuilder
            BlocBuilder<CounterBloc, int>(
              builder: (context, count) {
                return Text(
                  'Counter: $count',
                  style: const TextStyle(fontSize: 24.0),
                );
              },
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Button to increment the count
                ElevatedButton(
                  onPressed: () =>
                      counterBloc.add(CounterEvent.increment),
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(16.0),
                  ),
                  child: const Icon(Icons.add),
                ),
                const SizedBox(width: 16.0),
                // Button to decrement the count
                ElevatedButton(
                  onPressed: () =>
                      counterBloc.add(CounterEvent.decrement),
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(16.0),
                  ),
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}