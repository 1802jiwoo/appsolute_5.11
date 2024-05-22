import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('activity'),
      ),
      body: const Center(
        // child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'activity',
                style: TextStyle(
                    fontSize: 35
                ),
              ),
            ],
          ),
        // ),
      ),
    );
  }
}

