import 'package:expense_tracker_example/screens/stats/chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
        child: Column(
          children: [
            const Text(
              'Transacciones',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ), 
            ),
            const SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(234, 184, 240, 223),
                borderRadius: BorderRadius.circular(25)
              ),
             child: const Padding(
               padding: EdgeInsets.fromLTRB(12, 20, 12, 12),
               child: MyChart(),
             ),
              ),
        ],
        ),
      ),
    );
  }
}