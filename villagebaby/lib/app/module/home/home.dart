import 'package:flutter/material.dart';
import 'package:villagebaby/app/global/components/counting_button.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(flex: 2),
          Text(
            '1',
            style: TextStyle(
              fontSize: 80,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CountingButton(
                icon: const Icon(Icons.add),
                onPressed: () {},
              ),
              const SizedBox(width: 100),
              CountingButton(
                icon: const Icon(Icons.remove),
                onPressed: () {},
              ),
            ],
          ),
          const Spacer(flex: 3),
        ],
      ),
    );
  }
}
