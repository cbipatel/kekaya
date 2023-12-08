import 'package:flutter/services.dart';
import 'package:kekaya/Utility/common_buttons.dart';

import '../../Utility/utility_export.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<String> stepMsgList = [
    'Step into\nthe gold\nfuture now',
    'Invest\nyour gold\nfor future',
    'Covert\nyour gold\nmore easily'
  ];

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 5,
      width: isActive ? 100 : 90,
      decoration: BoxDecoration(
        color: isActive ? colorBrown : colorBrown.withOpacity(0.5),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Stack(
          children: [
            // Image(
            //   image: onBoardingBg,
            //   fit: BoxFit.cover,
            //   alignment: Alignment.centerLeft,
            //   width: getScreenWidth(context),
            //   height: getScreenHeight(context),
            // ),
            Stack(
              children: <Widget>[
                SizedBox(
                  height: getScreenHeight(context),
                  child: PageView(
                    physics: const ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      page1(),
                      page2(),
                      page3(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildPageIndicator(),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(17),
                      child: Text(
                        stepMsgList[_currentPage],
                        textAlign: TextAlign.left,
                        style: AppFontStyle.blackRecoleta24W400
                            .copyWith(color: colorBrown, fontSize: 57, height: 1.1),
                      ),
                    ),
                    customHeight(43),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        commonOutlineButton(onPress: () {}, title: 'Skip'),
                        commonFilledButton(
                            onPress: () {
                              _pageController.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            title: 'Start with email or phone')
                      ],
                    ),
                    customHeight(42),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget page1() {
    return commonStructure(
        context: context,
        child: Stack(
          children: [
            Image(
              image: onBoardingBg,
              fit: BoxFit.cover,
              alignment: Alignment.centerLeft,
              width: getScreenWidth(context),
              height: getScreenHeight(context),
            ),
          ],
        ));
  }

  Widget page2() {
    return commonStructure(
        context: context,
        child: Stack(
          children: [
            Image(
              image: onBoardingBg,
              fit: BoxFit.cover,
              alignment: Alignment.centerLeft,
              width: getScreenWidth(context),
              height: getScreenHeight(context),
            ),
          ],
        ));
  }

  Widget page3() {
    return commonStructure(
        context: context,
        child: Stack(
          children: [
            Image(
              image: onBoardingBg,
              fit: BoxFit.cover,
              alignment: Alignment.centerLeft,
              width: getScreenWidth(context),
              height: getScreenHeight(context),
            ),
          ],
        ));
  }
}
