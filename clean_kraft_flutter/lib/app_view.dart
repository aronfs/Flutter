import 'package:clean_kraft_flutter/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:clean_kraft_flutter/screens/auth/views/welcome_screen.dart';
import 'package:clean_kraft_flutter/screens/home/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kangreburges Delivery',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.light(
              primary: Colors.grey.shade100,
              onPrimary: Colors.black,
              secondary: Colors.cyan,
              onSecondary: Colors.white)),
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: ((context, state) {
          if (state.status == AuthenticationStatus.authenticated) {
            return const HomeScreen();
          } else {
            return const WelcomeScreen();
          }
        }),
      ),
    );
  }
}
