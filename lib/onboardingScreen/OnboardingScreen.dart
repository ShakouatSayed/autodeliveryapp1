import 'package:autodeliveryapp1/onboardingScreen/OnboardingCard.dart';
import 'package:flutter/material.dart';

import '../signInPage/SignInPage.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
   int _page = 0;

  final List<Map<String, dynamic>> pages = [
    {
      "imagePath": "assets/img_1.png",
      "title": "Orders Come to You",
      "subtitle":
          "No more manual refresh-receive delivery requests instantly and never miss an order.",
    },
    {
      "imagePath": "assets/img_4.png",
      "title": "Maximize Your Time",
      "subtitle":
          "Get more deliveries with automatic order assignment and focus on what matters-delivering faster, earning more.",
    },
    {
      "imagePath": "assets/img_3.png",
      "title": "Simplify Your Ride",
      "subtitle":
          "Track orders, navigate with ease, and enjoy a smooth delivery experience every time.",
    },
  ];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _goNext() {
    if (_page < pages.length - 1) {
      _controller.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      _goToHome();
    }
  }

  void _skip() => _goToHome();

  void _goToHome() {
    //if(_page == pages.length -1){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => SignInPage()));
    // }else{
    //   _controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
    // }
  //
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFF6F7FB),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),

              // Expanded PageView area
              SizedBox(
                height: 480,
                child: PageView.builder(
                  controller: _controller,
                  itemCount: pages.length,
                  onPageChanged: (i) => setState(() => _page = i),
                  itemBuilder: (context, index) {
                   // final data = pages[index];
                    return OnboardingCard(
                      imagePath: pages[index]["imagePath"],
                      title: pages[index]["title"],
                      subtitle: pages[index]["subtitle"],
                    );
                  },
                ),
              ),
              //SizedBox(height: 10),

              // Buttons row : Skip + Next
              Row(
                children: [
                  // Skip button
                  Expanded(
                    child: SizedBox(
                      height: 56,
                      child: OutlinedButton(
                         onPressed:_skip, // (){
                        //    if(_page == pages.length -1){
                        //       // Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => SignInPage()));
                        //     }else{
                        //        _controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
                        //      }
                        // },
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white70.withOpacity(0.08),
                          foregroundColor: Colors.black,
                          side: BorderSide(
                            color: Colors.white.withOpacity(0.08),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        child: Text(
                          "Skip",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.04),

                  // Next buttons
                  Expanded(
                    child: SizedBox(
                      height: 56,
                      child: ElevatedButton(
                         onPressed: _goNext,//(){
                        //      if(_page == pages.length -1){
                        //        // Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => SignInPage()));
                        //      }else{
                        //        _controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
                        //      }
                        // },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        child: Text(
                           _page == pages.length - 1 ? "Next" : "Next",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60),

              // Dots indicator
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    pages.length, (i) {
                  //final bool active = i == _page;
                  return Container(
                    //duration: Duration(milliseconds: 250),
                    margin: EdgeInsets.symmetric(horizontal: 6),
                    width: _page == i ? 28 : 12,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
