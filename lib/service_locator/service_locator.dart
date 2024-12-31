import 'package:bottomnavigationview/bloc/arithmetic_bloc.dart';
import 'package:bottomnavigationview/bloc/counter_bloc.dart';
import 'package:bottomnavigationview/cubit/arithemetic_cubit.dart';
import 'package:bottomnavigationview/cubit/counter_cubit.dart';
import 'package:bottomnavigationview/cubit/dashboard_cubit.dart';
import 'package:bottomnavigationview/cubit/student_cubit.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;
Future<void> initDependency() async {
  _initCubit();
  _initBloc();
}

void _initBloc() {
  serviceLocator.registerLazySingleton(() => ArithmeticBloc());
  serviceLocator.registerLazySingleton(() => CounterBloc());
}

void _initCubit() {
  serviceLocator.registerFactory<CounterCubit>(() => CounterCubit());
  serviceLocator.registerFactory<ArithmeticCubit>(() => ArithmeticCubit());
  serviceLocator.registerFactory<StudentCubit>(() => StudentCubit());
  serviceLocator.registerLazySingleton<DashboardCubit>(
    () => DashboardCubit(
      serviceLocator(),
      serviceLocator(),
      serviceLocator(),
      serviceLocator(),
      serviceLocator(),
    ),
  );
}
