import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitial(counterValue: 0)) {
    on<CounterIncrementEvent>((event, emit) {
      emit(IncrementState(counterValue: state.counterValue! + 1));
    });
    on<CounterDecrementEvent>((event,emit){
      emit(DecrementState(counterValue: state.counterValue! - 1));
    });
  }
}
