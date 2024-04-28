import 'package:fantasy/presentation/pages/auth_pages/login_screen.dart';
import 'package:fantasy/presentation/pages/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../manager/color_manager.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({super.key});

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  late PageController controller;
  int currentPageIndex = 0;

  @override
  void initState() {
    controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: PageView(
        controller: controller,
        physics: ClampingScrollPhysics(),
        onPageChanged: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        children: [
          Stack(
            children: [
              SizedBox(
                width: width,
                height: height * .7,
                child: SvgPicture.asset(
                  'assets/images/intro_page_images/intro1.svg',
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * .1,
                    vertical: height * .05,
                  ),
                  width: width,
                  height: height * .4,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(width * .2),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Futbol o'yini",
                        style: getRegularTextStyle(height * .03),
                      ),
                      Text(
                        "Professional liga futbol o'yinlarini tomosha qiling va o'ynang",
                        style: getRegularTextStyle(height * .02, color: grey),
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(width * .5, height * .05),
                              backgroundColor: primary,
                            ),
                            onPressed: () {
                              controller.animateToPage(1,
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.bounceOut);
                            },
                            child: Text(
                              'Keyingisi',
                              style: getRegularTextStyle(height * .02,
                                  color: Colors.white),
                            ),
                          ),
                          SizedBox(width: width * .1),
                          Container(
                            width: width * .15,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: currentPageIndex == 0
                                      ? width * .06
                                      : width * .03,
                                  height: width * .03,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(width * .02),
                                    color: primary,
                                  ),
                                ),
                                Container(
                                  width: width * .03,
                                  height: width * .03,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: primary,
                                  ),
                                ),
                                Container(
                                  width: width * .03,
                                  height: width * .03,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                width: width,
                height: height * .7,
                child: SvgPicture.asset(
                  'assets/images/intro_page_images/intro2.svg',
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * .1,
                    vertical: height * .05,
                  ),
                  width: width,
                  height: height * .4,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(width * .2),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Real vaqt va statistikasi',
                        style: getRegularTextStyle(height * .03),
                      ),
                      Text(
                        "105 mln ga 15 nafar uyinchini sotib oling va ularning xaqiqiy o'yinlardagi xarakatlari uchun ochkolarni qo'lga kiriting. Xush, orzuingizdagi jamoaga kimlarni olasiz?",
                        style: getRegularTextStyle(height * .02, color: grey),
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(width * .5, height * .05),
                              backgroundColor: primary,
                            ),
                            onPressed: () {
                              controller.animateToPage(2,
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.bounceOut);
                            },
                            child: Text(
                              'Keyingisi',
                              style: getRegularTextStyle(height * .02,
                                  color: white),
                            ),
                          ),
                          SizedBox(width: width * .1),
                          Container(
                            width: width * .15,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: width * .03,
                                  height: width * .03,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(width * .02),
                                    color: primary,
                                  ),
                                ),
                                Container(
                                  width: currentPageIndex == 1
                                      ? width * .06
                                      : width * .03,
                                  height: width * .03,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(width * .02),
                                    color: primary,
                                  ),
                                ),
                                Container(
                                  width: width * .03,
                                  height: width * .03,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: width * .05,
                ),
                width: width,
                height: height * .7,
                child: SvgPicture.asset(
                  'assets/images/intro_page_images/intro3.svg',
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * .1,
                    vertical: height * .05,
                  ),
                  width: width,
                  height: height * .4,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(width * .2),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Liga turnir jadvali",
                        style: getRegularTextStyle(height * .03),
                      ),
                      Text(
                        "Butun dunyo bo'ylab klublar statistikasi va ligadagi holati",
                        style: getRegularTextStyle(height * .02, color: grey),
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(width * .5, height * .05),
                              backgroundColor: primary,
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()));
                            },
                            child: Text(
                              'Boshlash',
                              style: getRegularTextStyle(height * .02,
                                  color: white),
                            ),
                          ),
                          SizedBox(width: width * .1),
                          Container(
                            width: width * .15,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: width * .03,
                                  height: width * .03,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(width * .02),
                                    color: primary,
                                  ),
                                ),
                                Container(
                                  width: width * .03,
                                  height: width * .03,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: primary,
                                  ),
                                ),
                                Container(
                                  width: currentPageIndex == 2
                                      ? width * .06
                                      : width * .03,
                                  height: width * .03,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(width * .02),
                                    color: primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
