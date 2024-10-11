import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';

class MyImageSlider extends StatefulWidget {
  const MyImageSlider({super.key});

  @override
  State<MyImageSlider> createState() => _MyImageSliderState();
}

class _MyImageSliderState extends State<MyImageSlider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: const Text("Image Slider"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 300),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 250,
                width: double.infinity,
                child: AnotherCarousel(
                  images: const [
                    AssetImage('assets/images/cr7.png'),
                    AssetImage('assets/images/lm10.png'),
                    AssetImage('assets/images/njr.png'),

                    // for network image

                    NetworkImage(
                        'https://usercontent.one/wp/manforhimself.com/wp-content/uploads/2021/02/zayn-malik-cropped-short-blue-dyed-hair-man-for-himself-1200.jpg')
                  ],
                  dotSize: 15,
                  dotColor: Colors.red,
                  indicatorBgPadding: 2,
                  autoplay: false,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
