import '../lib/policy.dart';

void main() {
  const signalcase_1 = Signal(64, 99, 11, 21, 9);
  assert(Policy.score(signalcase_1) == 84);
  assert(Policy.classify(signalcase_1) == 'review');
  const signalcase_2 = Signal(67, 88, 23, 12, 5);
  assert(Policy.score(signalcase_2) == 73);
  assert(Policy.classify(signalcase_2) == 'review');
  const signalcase_3 = Signal(85, 97, 17, 14, 7);
  assert(Policy.score(signalcase_3) == 136);
  assert(Policy.classify(signalcase_3) == 'review');
}
