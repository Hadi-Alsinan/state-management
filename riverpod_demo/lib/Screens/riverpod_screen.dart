import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/riverpod_provider.dart';

// A screen that displays a counter using Riverpod for state management.
class RiverPodScreen extends ConsumerStatefulWidget {
  const RiverPodScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RiverPodScreenState createState() => _RiverPodScreenState();
}

// A provider that exposes a counter state and its corresponding notifier.
final counterProvider = StateNotifierProvider<Counter, int>((ref) {
  return Counter();
});

class _RiverPodScreenState extends ConsumerState<RiverPodScreen> {
  @override
  Widget build(BuildContext context) {
    // Read the current value of the counter state.
    final count = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Counter: $count',
              style: const TextStyle(fontSize: 24.0),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Increment the counter state.
                    ref.read(counterProvider.notifier).increment();
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(16.0),
                  ),
                  child: const Icon(Icons.add),
                ),
                const SizedBox(width: 16.0),
                ElevatedButton(
                  onPressed: () {
                    // Decrement the counter state.
                    ref.read(counterProvider.notifier).decrement();
                  },
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
