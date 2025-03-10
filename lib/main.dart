import 'package:flutter/material.dart';
import 'package:preloved_app/views/dashboard_view.dart';
import 'package:preloved_app/views/login/landingpage_view.dart';
import 'package:preloved_app/views/login/login_view.dart';
import 'package:preloved_app/views/login/onboarding_view.dart';
import 'package:preloved_app/views/login/register_view.dart';
import 'package:preloved_app/views/login/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/landing',
      routes: {
        '/splash': (context) => SplashView(),
        '/onboarding': (context) => OnboardingView(),
        '/landing': (context) => LandingpageView(),
        '/login': (context) => LoginView(),
        '/register': (context) => RegisterView(),
        '/dashboard': (context) => DashboardView()
      },
      theme: ThemeData(
          // WARNA UTAMA

          ),
    );
  }
}
