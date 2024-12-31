part of 'arithmetic_bloc.dart';

sealed class ArithmeticEvent extends Equatable {
  const ArithmeticEvent();

  @override
  List<Object> get props => [];
}

class AddEvent extends ArithmeticEvent {
  final int first;
  final int second;

  const AddEvent(this.first, this.second);
}

class SubtractEvent extends ArithmeticEvent {
  final int first;
  final int second;

  const SubtractEvent(this.first, this.second);
}

class MultiplyEvent extends ArithmeticEvent {
  final int first;
  final int second;

  const MultiplyEvent(this.first, this.second);
}
