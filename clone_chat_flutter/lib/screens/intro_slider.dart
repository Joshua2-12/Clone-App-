import 'package:flutter/material.dart';

class Slide {
  final String title;
  final String description;
  final String pathImage;

  Slide(
      {required this.title,
      required this.description,
      required this.pathImage});
}

class IntroSliderPage extends StatefulWidget {
  const IntroSliderPage({Key? key, required Text renderSkipBtn, Color? backgroundColorAllSlide, 
  required Text renderNextBtn, required  colorDoneBtn,
   required Text renderDoneBtn, required Color colorDonBtn, 
   required Color colorActiveDot, 
   required double sizeDot, 
    required List<Widget> listCustomTabs, 
    required BouncingScrollPhysics scrollPhysics, 
    required bool shouldHideStatusBar})
   : super(key: key);

  @override
  State<IntroSliderPage> createState() => _IntroSliderPageState();
}

class _IntroSliderPageState extends State<IntroSliderPage> {
  List<Slide> slide = [];

  @override
  void initState() {
    super.initState();
    slide.add(
      Slide(
        title: "Hello There!",
        description: "Welcome to the new world, try to connect with others",
        pathImage: "asset/images/okay.jpg",
      ),
    );
    slide.add(
      Slide(
        title: "Hello There!",
        description: "Welcome to the new world, try to connect with others",
        pathImage: "asset/images/Now.jpg",
      ),
    );
    slide.add(
      Slide(
        title: "Hello There!",
        description: "Welcome to the new world, try to connect with others",
        pathImage: "asset/images/fine.jpg",
      ),
    );
    slide.add(
      Slide(
        title: "Hello There!",
        description: "Welcome to the new world, try to connect with others",
        pathImage: "asset/images/Alright.jpg",
      ),
    );
  }

  List<Widget> renderListCustomTab() {
    List<Widget> tabs = [];
    for (int i = 0; i < slide.length; i++) {
      // ignore: unused_local_variable
      Slide currentSlide = slide[i];
      tabs.add(
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Container(
            margin: const EdgeInsets.only(bottom: 160, top: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    currentSlide.pathImage,
                    matchTextDirection: true,
                    height: 60,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    currentSlide.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  margin: const EdgeInsets.only(
                    top: 15,
                    left: 20,
                    right: 20,
                  ),
                  child: Text(
                    currentSlide.description,
                    style: const TextStyle(
                        color: Colors.white, fontSize: 14, height: 1.5),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    return IntroSliderPage(
      backgroundColorAllSlide:Colors.green[700],
      renderSkipBtn : const Text("Skip"),
      renderNextBtn: const Text("Next"),
      renderDoneBtn: const Text("Done"),
      colorDonBtn:Colors.white,
      colorActiveDot:Colors.white,
      sizeDot:8.0,
      listCustomTabs:renderListCustomTab(),
      scrollPhysics:const BouncingScrollPhysics(),
      shouldHideStatusBar:false, colorDoneBtn: null,
    );
  }
}
