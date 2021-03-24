import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';

class HomeController extends NotifierStore<Exception, int> {
  HomeController() : super(0);

  Future<void> increment() async {
    setLoading(true);

    await Future.delayed(Duration(seconds: 1));

    int value = state + 1;
    if (value < 5) {
      update(value);
    } else {
      setError(Exception('Error: state not can be > 4'));
    }

    setLoading(false);
  }

  Future<void> nextPage() async {
    Modular.to.navigate('./routes/page1');
  }
}
