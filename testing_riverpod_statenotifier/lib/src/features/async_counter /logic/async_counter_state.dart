part of 'async_counter_notifier.dart';

abstract class AsyncCounterState {}

class CounterInitial extends AsyncCounterState {}

class CounterLoading extends AsyncCounterState {}

class CounterData extends AsyncCounterState {
  CounterData(this.count);
  final int count;
}

class CounterError extends AsyncCounterState {}
