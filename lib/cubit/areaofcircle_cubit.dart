import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';

class AreaofcircleCubit extends Cubit<double> {
  AreaofcircleCubit() : super(0.0);

  void calculate(double radius) {
    double area = (pi * radius * radius);
    emit(area);
  }
}
