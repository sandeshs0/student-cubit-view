import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'arithmetic_event.dart';

class ArithmeticBloc extends Bloc<ArithmeticEvent, int> {
  ArithmeticBloc() : super(0) {
    on<AddEvent>((event, emit) {
      final result = event.first + event.second;
      emit(result);
    });

    on<SubtractEvent>((event, emit) {
      final result = event.first - event.second;
      emit(result);
    });

    on<MultiplyEvent>((event, emit) {
      final result = event.first * event.second;
      emit(result);
    });
  }
}
