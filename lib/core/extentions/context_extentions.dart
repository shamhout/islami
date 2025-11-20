import 'package:flutter/cupertino.dart';

extension ContextExtentions on BuildContext {
  double get gethight => MediaQuery.of(this).size.height * 0.01;
  double get getwight => MediaQuery.of(this).size.width * 0.02;
  double get highPadding => MediaQuery.of(this).size.height * 0.03;
}
