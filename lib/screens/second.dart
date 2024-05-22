import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  // int _selectdeIndex = 0;
  //
  // final List<Widget> _screens = [
  //   Tab1Screen(),
  //   Tab2Screen(),
  //   Tab3Screen(),
  //   Tab4Screen(),
  //   Tab5Screen(),
  // ];
  //
  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectdeIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('send'),
      ),
      body: const Center(
        // child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'send',
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
