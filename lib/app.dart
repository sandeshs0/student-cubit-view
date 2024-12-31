import 'package:bottomnavigationview/cubit/dashboard_cubit.dart';
import 'package:bottomnavigationview/service_locator/service_locator.dart';
import 'package:bottomnavigationview/view/dashboard_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // return MultiBlocProvider(
    //   providers: [
    //     BlocProvider(
    //       create: (context) => serviceLocator<ArithmeticCubit>(),
    //     ),
    //     BlocProvider(
    //       create: (context) => serviceLocator<StudentCubit>(),
    //     ),
    //     BlocProvider(
    //       create: (context) => serviceLocator<DashboardCubit>(),
    //     ),
    //     // BlocProvider(create: (context) => CounterCubit()),
    //     // BlocProvider(create: (context) => ArithmeticCubit()),
    //     // BlocProvider(create: (context) => StudentCubit()),
    //     // // BlocProvider(create: (context) => AreaofcircleCubit()),
    //     // // BlocProvider(create: (context) => SimpleInterestCubit()),
    //     // // BlocProvider(create: (context) => TsaofcubeCubit()),
    //     // BlocProvider(
    //     //     create: (context) => DashboardCubit(
    //     //           context.read<CounterCubit>(),
    //     //           context.read<ArithmeticCubit>(),
    //     //           context.read<StudentCubit>(),
    //     //           // context.read<SimpleInterestCubit>(),
    //     //           // context.read<AreaofcircleCubit>(),
    //     //           // context.read<TsaofcubeCubit>(),
    //     //         ))
    //   ],
    return MaterialApp(
      // title: 'Flutter BLoC',
      debugShowCheckedModeBanner: false,
      title: "Flutter Bloc",
      home: BlocProvider.value(
        value: serviceLocator<DashboardCubit>(),
        child: const DashboardCubitView(),
      ),
    );
  }
}
