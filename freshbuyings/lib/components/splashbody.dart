import 'package:flutter/material.dart';

import 'titleCard.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'iconConstants.dart';
import 'defaultButton.dart';

class SplashBody extends StatefulWidget {
  @override
  _SplashBodyState createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to FreshBuyings, \nLets go organic!",
      "image": berryicon,
    },
    {
      "text": "Straight from the most gushiest gardenss!",
      "image": strawberryIcon,
    },
    {
      "text": "Place an order and \nwe'll deliver by the coming weekend!",
      "image": watermelonIcon,
    },
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                        size: size,
                        splashQuote: splashData[index]["text"],
                        splashIcon: splashData[index]["image"],
                      )),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 20.0,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDots(index: index),
                      ),
                    ),
                    Spacer(),
                    DefaultButton(
                      size: size,
                      text: "Continue",
                      press: () {
                        Navigator.pushNamed(context, '/second');
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDots({int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 8),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index
            ? Colors.white
            : Color(0xFFD8D8D8).withOpacity(0.5),
        borderRadius: BorderRadius.circular(13),
      ),
    );
  }
}

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    @required this.size,
    this.splashQuote,
    this.splashIcon,
  }) : super(key: key);

  final Size size;
  final String splashQuote;
  final String splashIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        TitleName(
          firstHeadTextSize: 60,
          secondHeadTextSize: 55,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            splashQuote,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
        Spacer(),
        Container(
          child: SvgPicture.asset(
            splashIcon,
            height: size.height * 0.25,
            width: size.width * 0.25,
          ),
        )
      ],
    );
  }
}
