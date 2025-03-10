import 'package:flutter/material.dart';
import 'package:preloved_app/widgets/colors.dart';

class LandingpageView extends StatefulWidget {
  const LandingpageView({super.key});

  @override
  State<LandingpageView> createState() => _LandingpageViewState();
}

class _LandingpageViewState extends State<LandingpageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.WarnaTerang,
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(25, 80, 25, 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/ilustrations/landingpage.png",
                height: 260,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Lets You In',
                style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Prompt"),
              ),
              SizedBox(
                height: 48,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorsApp.WarnaTerang,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: ColorsApp.Grey4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                      minimumSize: Size(double.infinity, 60)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/media/google.png',
                        width: 40,
                      ),
                      Text(
                        'Continue with Google',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Prompt",
                            color: ColorsApp.Grey1),
                      )
                    ],
                  )),
              SizedBox(
                height: 24,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorsApp.WarnaTerang,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: ColorsApp.Grey4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                      minimumSize: Size(double.infinity, 60)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/media/facebook.png',
                        width: 27,
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      Text(
                        'Continue with Facebook',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Prompt",
                            color: ColorsApp.Grey1),
                      )
                    ],
                  )),
              SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: ColorsApp.Grey3, // Warna garis
                      thickness: 1, // Ketebalan garis
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'or',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: ColorsApp.Grey3,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      elevation: 10,
                      backgroundColor: ColorsApp.WarnaGelap2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15),
                      minimumSize: Size(double.infinity, 60)),
                  child: Text(
                    "Log In With Phone Number",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Prompt",
                        fontWeight: FontWeight.w600,
                        color: ColorsApp.WarnaTerang),
                  )),
              SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have An Account?',
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Prompt",
                        color: ColorsApp.Grey1),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    onPressed: () {},
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          decorationColor: ColorsApp.primary,
                          decoration: TextDecoration.underline,
                          fontSize: 13,
                          fontFamily: "Prompt",
                          fontWeight: FontWeight.w600,
                          color: ColorsApp.primary),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
