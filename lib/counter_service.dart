import 'package:state_notifier/state_notifier.dart';

class CounterService extends StateNotifier<int> {
  CounterService(int intialValue) : super(intialValue);

  void incrementCounter() {
    this.state++;
  }

  void decrementCounter() {
    this.state = (this.state - 1).toUnsigned(state.bitLength);
  }

  void resetCounter() {
    this.state = 0;
  }
}
