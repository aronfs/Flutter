import 'package:expense_tracker_example/screens/home/views/main_screen.dart';
import 'package:expense_tracker_example/screens/stats/status_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  late Color selectedItem = Colors.greenAccent.shade700;
  late Color unselectedItem = Colors.greenAccent.shade100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
          child: BottomNavigationBar(
            onTap: (context) {
              setState(() {
                index = context;
              });
            },

            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 3,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.home,
                      color: index == 0 ? selectedItem : unselectedItem),
                  label: 'Inicio'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.graph_square_fill,
                      color: index == 1 ? selectedItem : unselectedItem),
                  label: 'Estado'),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: const CircleBorder(),
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).colorScheme.tertiary,
                    Theme.of(context).colorScheme.secondary,
                    Theme.of(context).colorScheme.primary,
                  ],
                )),
            child: const Icon(CupertinoIcons.add),
          ),
        ),
        body: index == 0 ? const MainScreen() : const StatusScreen());
  }
}
