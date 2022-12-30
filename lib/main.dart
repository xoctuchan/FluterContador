import 'package:flutter/material.dart';
import 'package:my_app/screens/counter_screen.dart';
//import 'package:my_app/screens/home_screen.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, 
        home: CounterScreen()
      );
  }
}
