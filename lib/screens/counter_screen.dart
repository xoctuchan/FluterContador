import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;
  void increase() {
    counter++;
    setState(() { });
  }

  void decrease() {
    counter--;
    setState(() { });
  }

  void reset() {
    counter=0;
    setState(() { });
  }

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle( fontSize:40);
    return Scaffold(
        appBar: AppBar(title: const Center(child: Text('CounterScreen')), elevation: 10.0),
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
        floatingActionButton: CustomFloatingActions(
            increaseFn: increase,
            decreaseFn: decrease,
            resetFn: reset
          ),
        );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function increaseFn ;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    Key? key, 
    required this.increaseFn, 
    required this.decreaseFn, 
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
              child: const Icon(Icons.exposure_minus_1_outlined),
              onPressed: () => decreaseFn(),
            ),
          const SizedBox(width: 10),
          FloatingActionButton(
              child: const Icon(Icons.restore),
              onPressed: ()=>resetFn()
            ),
          const SizedBox(width: 10),
          FloatingActionButton(
              child: const Icon(Icons.exposure_plus_1_outlined),
              onPressed: ()=>increaseFn(),
            )
        ],
      );
  }
}