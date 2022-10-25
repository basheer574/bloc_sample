part of 'counter_bloc.dart';

@immutable
class CounterState extends Equatable{
  final int? counterValue;

  const CounterState({required this.counterValue});

  @override
  List<Object?> get props => [counterValue];
}

class CounterInitial extends CounterState {
  const CounterInitial({required super.counterValue});
}
class IncrementState extends CounterState{
  const IncrementState({required super.counterValue});
}
class DecrementState extends CounterState{
  const DecrementState({required super.counterValue});
}