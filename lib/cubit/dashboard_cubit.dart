import 'package:bottomnavigationview/bloc/arithmetic_bloc.dart';
import 'package:bottomnavigationview/bloc/counter_bloc.dart';
import 'package:bottomnavigationview/cubit/arithemetic_cubit.dart';
import 'package:bottomnavigationview/cubit/counter_cubit.dart';
import 'package:bottomnavigationview/cubit/student_cubit.dart';
import 'package:bottomnavigationview/view/arithemetic_bloc_view.dart';
import 'package:bottomnavigationview/view/arithemetic_cubit_view.dart';
import 'package:bottomnavigationview/view/counter_bloc_view.dart';
import 'package:bottomnavigationview/view/counter_cubit_view.dart';
import 'package:bottomnavigationview/view/student_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(
    this._counterCubit,
    this._arithmeticCubit,
    this._studentCubit,
    this._arithmeticBloc,
    this._counterBloc,
    // this._simpleInterestCubit,
    // this._areaofcircleCubit,
    // this._tsaofcubeCubit,
  ) : super(null);

  final CounterCubit _counterCubit;
  final ArithmeticCubit _arithmeticCubit;
  final StudentCubit _studentCubit;
  final ArithmeticBloc _arithmeticBloc;
  final CounterBloc _counterBloc;
  // final SimpleInterestCubit _simpleInterestCubit;
  // final AreaofcircleCubit _areaofcircleCubit;
  // final TsaofcubeCubit _tsaofcubeCubit;

  void openCounterView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _counterCubit,
          child: const CounterCubitView(),
        ),
      ),
    );
  }

  void openArtithemeticView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _arithmeticCubit,
          child: const ArithmeticCubitView(),
        ),
      ),
    );
  }

  void openArtithemeticBlocView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _arithmeticBloc,
          child: const ArithemeticBlocView(),
        ),
      ),
    );
  }

  void openCounterBlocView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _counterBloc,
          child: const CounterBlocView(),
        ),
      ),
    );
  }

  // void openSimpleInterestView(BuildContext context) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (_) => BlocProvider.value(
  //         value: _simpleInterestCubit,
  //         child: const SimpleInterestCubitView(),
  //       ),
  //     ),
  //   );
  // }

  void openStudentView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _studentCubit,
          child: StudentCubitView(),
        ),
      ),
    );
  }

  // void openAreaOfCircleView(BuildContext context) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (_) => BlocProvider.value(
  //         value: _areaofcircleCubit,
  //         child: const CircleAreaCubitView(),
  //       ),
  //     ),
  //   );
  // }

  // void openTsaOfCube(BuildContext context) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (_) => BlocProvider.value(
  //         value: _tsaofcubeCubit,
  //         child: const CubeTsaCubitView(),
  //       ),
  //     ),
  //   );
  // }
}
