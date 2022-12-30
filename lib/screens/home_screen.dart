import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle( fontSize:40);
    int counter = 10;

    return Scaffold(
        appBar: AppBar(title: const Center(child: Text('HomeScreen')), elevation: 10.0),
        //backgroundColor: const Color.fromARGB(255, 1, 71, 120),
        body: Center(
          child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children:  [
                  const Text('Numero de clicks', style: fontSize30),
                  Text('$counter', style: fontSize30)
                ],
              ),
          ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {  
              counter++;
              print('Hola mundo desde FloatingActionButton');
            },
          ),
        );
  }
}
