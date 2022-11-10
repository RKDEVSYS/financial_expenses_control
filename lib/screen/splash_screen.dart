import 'package:financial_expenses_control/screen/dashboard_screen.dart';
import 'package:financial_expenses_control/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:nb_utils/nb_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    setStatusBarColor(primaryColor, statusBarIconBrightness: Brightness.light);
    await Future.delayed(const Duration(seconds: 10));
    if (mounted) finish(context);
    // ignore: use_build_context_synchronously
    Dashboard().launch(context, isNewTask: true);
  }

  @override
  void dispose() {
    setStatusBarColor(Colors.white, statusBarIconBrightness: Brightness.dark);
    super.dispose();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [
              0.1,
              1.0,
              1.0,
              0.4
            ],
                colors: [
              Colors.blue.shade400,
              Colors.blue.shade900,
              Colors.blue.shade500,
              Colors.blue.shade900,
            ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Lottie.asset(
                "assets/splash.json",
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "Minhas Despesas",
                style: GoogleFonts.righteous(
                    fontSize: 36, color: Colors.blue.shade100),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
