// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class BasicScreenView extends StatelessWidget {
  const BasicScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IE Workshop'),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text('Hello world!'),
            const Text(
              'Hello world with style',
              style: TextStyle(
                fontSize: 34,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Tooooooooooooooo looooooooooooooooong text',
              style: TextStyle(
                fontSize: 34,
                color: Colors.pink,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Container(
              height: 300,
              width: 300,
              color: Colors.amber,
              child: const Text('Hello in a colored box'),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 300,
              width: 300,
              color: Colors.amber,
              padding: const EdgeInsets.all(30),
              child: const Text('Hello in a colored box'),
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    print('Button 1 pressed');
                  },
                  child: const Text('Button 1'),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('Button 2 pressed');
                  },
                  child: const Text('Button 2'),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
