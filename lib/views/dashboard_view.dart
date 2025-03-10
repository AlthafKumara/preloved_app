import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:preloved_app/widgets/bottom_nav.dart';
import 'package:preloved_app/widgets/colors.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          'assets/icons/Home_fill.svg',
          colorFilter: ColorFilter.mode(ColorsApp.primary, BlendMode.srcIn),
        ),
      ),
      bottomNavigationBar: BottomNav(0),
    );
  }
}
