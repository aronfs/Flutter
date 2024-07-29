import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:todo_app_v2/bloc/todo_bloc.dart';
import 'package:todo_app_v2/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getTemporaryDirectory(),
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi Aplicacion de Tareas TODO',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
            primary: Color.fromARGB(255, 67, 184, 160),
            onPrimary: Color.fromARGB(255, 0, 75, 60),
            secondary: Color.fromARGB(6, 18, 5, 119),
            onSecondary: Colors.white),
      ),
      home: BlocProvider<TodoBloc>(
        create: (context) => TodoBloc()..add(
          TodoStarted()
        ), 
        child: const HomeScreen(),
      ),
    );
  }
}
