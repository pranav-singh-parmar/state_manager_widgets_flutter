import 'dart:developer' as devtools show log;
import 'dart:math';

extension Log on Object {
  void log() => devtools.log(toString());
}

extension RandomeElement<T> on Iterable<T> {
  T getRandomElement() => elementAt(
        Random().nextInt(length),
      );
}
