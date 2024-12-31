// import 'package:bottomnavigationview/bottom_screen/about.dart';
// import 'package:bottomnavigationview/bottom_screen/cart.dart';
// import 'package:bottomnavigationview/bottom_screen/profile.dart';
// import 'package:bottomnavigationview/core/app_theme/app_theme.dart';
// import 'package:bottomnavigationview/view/counter_cubit_view.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//       initialRoute: "/",
//       theme: getApplicationTheme(),
//       debugShowCheckedModeBanner: false,
//       routes: {
//         // '/': (context) => const DashboardView(),
//         '/': (context) => const CounterCubitView(),
//         '/cart': (context) => const CartScreen(),
//         "/profile": (context) => const ProfilePage(),
//         "/about": (context) => const AboutScreen(),
//       }));
// }

import 'package:bottomnavigationview/app.dart';
import 'package:bottomnavigationview/service_locator/service_locator.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependency();

  runApp(
    const App(),
  );
}
