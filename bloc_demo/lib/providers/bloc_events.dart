// Define events for the CounterBloc
import 'package:flutter_bloc/flutter_bloc.dart';


/// This file contains the events that can be triggered in the BLoC.
/// Events are used to represent user actions or any other input that can change the state of the app.
/// Each event is represented by a class that extends the abstract class `BlocEvent`.
/// These classes should be immutable and contain all the necessary data to handle the event.
/// For example, if the user wants to add a new item to a list, the corresponding event class should contain the item data.
/// The BLoC will listen to these events and react accordingly by updating the app state.
enum CounterEvent { increment, decrement }

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterEvent>((event, emit) {
      if (event == CounterEvent.increment) {
        emit(state + 1);
      } else if (event == CounterEvent.decrement) {
        emit(state - 1);
      }
    });
  }

}
