import 'package:expense_tracker_example/screens/home/views/home_screen.dart';
import 'package:flutter/material.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Informes de Gastos Personales',
      theme: ThemeData(
          colorScheme: ColorScheme.light(
              background: Colors.grey.shade100,
              onBackground: Colors.black,
              primary: Color.fromARGB(182, 22, 222, 175),
              secondary: Color.fromARGB(172, 6, 98, 147),
              tertiary: Color.fromARGB(255, 30, 13, 156))),
      home: const HomeScreen(),
    );
  }
}
