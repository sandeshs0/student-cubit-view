import 'package:flutter_bloc/flutter_bloc.dart';

class TsaofcubeCubit extends Cubit<double> {
  TsaofcubeCubit() : super(0.0);

  void calculate(double side) {
    double area = (6 * side * side);
    emit(area);
  }
}
