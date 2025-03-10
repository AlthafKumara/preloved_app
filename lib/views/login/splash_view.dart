import 'dart:async';

import 'package:flutter/material.dart';
import 'package:preloved_app/widgets/colors.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(
        context,
        '/onboarding',
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/background.jpg'),
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.darken),
          fit: BoxFit.cover,
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/logo_rbg.png',
                width: 250,
              ),
              Column(
                children: [
                  Text(
                    'Sechand',
                    style: TextStyle(
                      fontFamily: "Prompt",
                      fontSize: 38,
                      letterSpacing: 7,
                      fontWeight: FontWeight.w600,
                      color: ColorsApp.Grey4,
                    ),
                  ),
                  Text(
                    'Pre-Loved, Reimagined',
                    style: TextStyle(
                      fontFamily: "Prompt",
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: ColorsApp.Grey4,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
