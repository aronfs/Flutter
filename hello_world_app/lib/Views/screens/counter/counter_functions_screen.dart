import "package:flutter/material.dart";

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  String letterClick = 'super click';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Counter Screen Functions',
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text('$letterClick', style: const TextStyle(fontSize: 25))
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(height: 10),
          CustomButon(
              icon: Icons.plus_one,
              onPressed: () => setState(() {
                    clickCounter++;
                    (clickCounter < 2)
                        ? letterClick = 'Super Click'
                        : letterClick = 'Super Clicks';
                  })),
          const SizedBox(height: 10),
          CustomButon(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () => setState(() {
              clickCounter--;
              (clickCounter < 2)
                        ? letterClick = 'Super Click'
                        : letterClick = 'Super Clicks';
            }),
          ),
          const SizedBox(height: 10),
          CustomButon(
            icon: Icons.refresh_rounded,
            onPressed: () => setState(() {
              clickCounter = 0;
              (clickCounter < 2)
                        ? letterClick = 'Super Click'
                        : letterClick = 'Super Clicks';
            }),
          ),
        ],
      ),
    );
  }
}

class CustomButon extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButon({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
