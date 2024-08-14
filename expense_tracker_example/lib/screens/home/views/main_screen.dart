import 'dart:math';

import 'package:expense_tracker_example/data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue),
                      ),
                      Icon(
                        CupertinoIcons.person_alt_circle,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bienvenido",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.outline),
                      ),
                      Text("John Viracocha",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color:
                                  Theme.of(context).colorScheme.onBackground))
                    ],
                  )
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.settings_solid)),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width / 2,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Theme.of(context).colorScheme.tertiary,
                  Theme.of(context).colorScheme.secondary,
                  Theme.of(context).colorScheme.primary,
                ], transform: const GradientRotation(pi / 3)),
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 1,
                      color: Colors.black38,
                      offset: Offset(5, 9))
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Balance de Gastos",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 12),
                const Text(
                  "\$ 250",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white30, shape: BoxShape.circle),
                            child: const Center(
                              child: Icon(
                                CupertinoIcons.arrow_down_circle,
                                color: Colors.greenAccent,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ingresos",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "\$ 50",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white30, shape: BoxShape.circle),
                            child: const Center(
                              child: Icon(
                                CupertinoIcons.arrow_down_circle,
                                color: Colors.red,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Gastos",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "\$ 100",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Transacciones',
                style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.onBackground,
                    fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Ver Todo',
                  style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.onBackground,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: myData.length,
              itemBuilder: (context, int i) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(23)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: myData[i]['color'],
                                    shape: BoxShape.circle
                                  ), 
                                ),
                                myData[i]['icon'],
                               /* Icon(
                                  Icons.food_bank_sharp,
                                  color: Colors.white,
                                )*/
                              ],
                            ),
                            const SizedBox(width: 12),
                            Text(
                               myData[i]['name'],
                              style: TextStyle(
                                fontSize: 14,
                                color: Theme.of(context).colorScheme.onBackground,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                           
                          ],
                        ),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                    Text(
                              myData[i]['totalAmount'],
                              style: TextStyle(
                                fontSize: 14,
                                color: Theme.of(context).colorScheme.onBackground,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                            Text(
                              myData[i]['date'],
                              style: TextStyle(
                                fontSize: 14,
                                color: Theme.of(context).colorScheme.outline,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                              ],
                            ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          )
        ]),
      ),
    );
  }
}
