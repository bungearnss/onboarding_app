import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../model/intros.dart';
import '../utils/app_color.dart';
import '../components/skip_btn.dart';
import '../components/start_btn.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController pageController = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
              controller: pageController,
              itemCount: introItemList.length,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              physics: const BouncingScrollPhysics(),
              itemBuilder: ((context, index) {
                return SizedBox(
                  width: size.width,
                  height: size.height,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(15, 40, 15, 10),
                        width: size.width,
                        height: size.height / 2.5,
                        child: animation(
                          index,
                          100,
                          Image.asset(introItemList[index].img),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25, bottom: 15),
                        child: animation(
                          index,
                          300,
                          Text(
                            introItemList[index].title,
                            textAlign: TextAlign.center,
                            style: textTheme.headline1,
                          ),
                        ),
                      ),
                      animation(
                        index,
                        500,
                        Text(
                          introItemList[index].subTitle,
                          textAlign: TextAlign.center,
                          style: textTheme.headline2,
                        ),
                      )
                    ],
                  ),
                );
              }),
            ),
          ),
          Expanded(
            flex: 1,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SmoothPageIndicator(
                controller: pageController,
                count: introItemList.length,
                effect: const ExpandingDotsEffect(
                  spacing: 6.0,
                  radius: 10.0,
                  dotWidth: 10.0,
                  dotHeight: 10.0,
                  expansionFactor: 3.8,
                  dotColor: Colors.grey,
                  activeDotColor: AppColors.btnColor,
                ),
                onDotClicked: (index) {
                  setState(() {
                    currentIndex = index;
                    pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                  });
                },
              ),
              currentIndex == 2
                  ? StartBtn(size: size, textTheme: textTheme)
                  : SkipBtn(
                      size: size,
                      textTheme: textTheme,
                      onPressed: () {
                        setState(() {
                          pageController.animateToPage(
                            2,
                            duration: const Duration(milliseconds: 1000),
                            curve: Curves.fastOutSlowIn,
                          );
                        });
                      })
            ]),
          ),
        ]),
      ),
    ));
  }

  Widget animation(int index, int delay, Widget child) {
    if (index == 1) {
      return FadeInDown(
        delay: Duration(milliseconds: delay),
        child: child,
      );
    }
    return FadeInUp(delay: Duration(milliseconds: delay), child: child);
  }
}
