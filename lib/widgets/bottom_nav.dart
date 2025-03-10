import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:preloved_app/widgets/colors.dart';

class BottomNav extends StatefulWidget {
  int page;
  BottomNav(this.page);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  getPage(index) {
    if (index == 0) {
      Navigator.pushReplacementNamed(context, '/dashboard');
    }
    if (index == 1) {
      Navigator.pushReplacementNamed(context, '/dashboard');
    }
    if (index == 2) {
      Navigator.pushReplacementNamed(context, '/dashboard');
    }
    if (index == 3) {
      Navigator.pushReplacementNamed(context, '/dashboard');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: BottomNavigationBar(
        selectedFontSize: 13,
        unselectedFontSize: 13,
        selectedItemColor: ColorsApp.WarnaGelap,
        unselectedItemColor: ColorsApp.Grey2,
        backgroundColor: ColorsApp.WarnaTerang,
        type: BottomNavigationBarType.fixed,
        currentIndex: widget.page,
        onTap: getPage,
        items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/Home_stroke.svg',
              ),
              activeIcon: SvgPicture.asset(
                'assets/icons/Home_fill.svg',
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/Search_stroke.svg',
              ),
              activeIcon: SvgPicture.asset(
                'assets/icons/Search_fill.svg',
              ),
              label: 'Explore'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/Heart_stroke.svg',
              ),
              activeIcon: SvgPicture.asset(
                'assets/icons/Heart_fill.svg',
              ),
              label: 'Favorites'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/Profile_stroke.svg',
              ),
              activeIcon: SvgPicture.asset(
                'assets/icons/Profile_fill.svg',
              ),
              label: 'Account'),
        ],
      ),
    );
  }
}
