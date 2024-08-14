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
              primary: Color.fromARGB(205, 222, 116, 22),
              secondary: Color.fromARGB(173, 6, 29, 147),
              tertiary: Color.fromARGB(255, 151, 23, 44))),
      home: const HomeScreen(),
    );
  }
}
