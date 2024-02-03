import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showTitle ? const MyLargeTitle() : const Text('nothing'),
              IconButton(
                  onPressed: toggleTitle,
                  icon: const Icon(Icons.remove_red_eye)
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {

  @override
  void initState() {
    super.initState();
    print('initState!');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose!');
  }

  @override
  Widget build(BuildContext context) {
    print('build!');
    return Text(
      'My Large Title',
      style: TextStyle(
          fontSize: 30,
          color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}