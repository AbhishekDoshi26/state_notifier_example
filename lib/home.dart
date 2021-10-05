import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:state_notifier_example/counter_service.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final CounterService _counterService = CounterService(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateNotifier Example'),
      ),
      bottomNavigationBar: Container(
        color: Colors.red,
        height: 50.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () => _counterService.incrementCounter(),
              icon: Icon(Icons.add),
              splashRadius: 0.1,
            ),
            IconButton(
              onPressed: () => _counterService.decrementCounter(),
              icon: Icon(Icons.remove),
              splashRadius: 0.1,
            ),
            IconButton(
              onPressed: () => _counterService.resetCounter(),
              icon: Icon(Icons.restart_alt),
              splashRadius: 0.1,
            ),
          ],
        ),
      ),
      body: Center(
        child: StateNotifierBuilder(
          stateNotifier: _counterService,
          builder: (BuildContext context, int value, Widget? child) {
            return Text(
              '$value',
              style: TextStyle(fontSize: 50.0),
            );
          },
        ),
      ),
    );
  }
}
