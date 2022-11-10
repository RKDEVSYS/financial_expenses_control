import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'screen/splash_screen.dart';

void main() {
  runApp(const FinancialExpensesControl());
}

class FinancialExpensesControl extends StatelessWidget {
  const FinancialExpensesControl({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minhas Despesas',
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      home: const SplashScreen(),
    );
  }
}
