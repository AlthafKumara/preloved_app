import 'dart:async';
import 'package:flutter/material.dart';
import 'package:preloved_app/widgets/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _controller = PageController();
  int currentpage = 0;

  final List<Map<String, String>> onboardingdata = [
    {
      "image": "assets/ilustrations/trustedseller.png",
      "title": "Trusted Seller",
      "description":
          "Explore thousands of curated second-hand products just for you."
    },
    {
      "image": "assets/ilustrations/easypayment.png",
      "title": "Easy Payment",
      "description":
          "Choose from multiple payment options, including Cash on Delivery."
    },
    {
      "image": "assets/ilustrations/fastdelivery.png",
      "title": "Fast Delivery",
      "description":
          "Get your items delivered quickly and safely to your doorstep."
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.WarnaTerang,
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: onboardingdata.length,
                onPageChanged: (index) {
                  setState(() {
                    currentpage = index;
                  });
                },
                itemBuilder: (context, index) {
                  return _buildOnboardingPage(
                    onboardingdata[index]["image"]!,
                    onboardingdata[index]["title"]!,
                    onboardingdata[index]["description"]!,
                  );
                },
              ),
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: onboardingdata.length,
              effect: ExpandingDotsEffect(
                dotColor: ColorsApp.Grey3,
                activeDotColor: ColorsApp.primary,
                dotWidth: 8,
                dotHeight: 8,
                expansionFactor: 4,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: ElevatedButton(
                  onPressed: () {
                    if (currentpage < onboardingdata.length - 1) {
                      _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease);
                    } else {
                      Navigator.pushReplacementNamed(context, "/landing");
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorsApp.WarnaGelap2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15),
                      minimumSize: Size(double.infinity, 60)),
                  child: Text(
                    currentpage == onboardingdata.length - 1
                        ? "Get Started"
                        : "Next",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Prompt",
                        fontWeight: FontWeight.w600,
                        color: ColorsApp.WarnaTerang),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOnboardingPage(
      String imagePath, String title, String description) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 300,
          ), // Gambar ilustrasi
          SizedBox(height: 40),
          Text(
            title,
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                fontFamily: "Prompt"),
          ),

          SizedBox(height: 20),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16, color: ColorsApp.Grey1, fontFamily: "Prompt"),
          ),
        ],
      ),
    );
  }
}
