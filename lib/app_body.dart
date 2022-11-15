import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('button and snackbar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 4),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text('你按下Text Button')
                ));
              },
              child: const Text('Text Button'),
            ),
            ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.green)),
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text('你按下Elevated Button')));
              },
              child: const Text('Elevated Button'),
            ),
            OutlinedButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all<Color>(Colors.orange),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(const SnackBar(content: Text('你按下Outlined Button')));
                },
                child: const Text('Outlined Button')),

            const Spacer(flex: 4),
            const Spacer(flex: 4),
          ],
        ),
      ),
    );
  }
}