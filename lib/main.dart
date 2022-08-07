import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final imagesPath = [
    'images/gt.jpg',
    'images/mustang_gt.jpg',
    'images/mustang_i.jpg',
    'images/mustang.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Carousel Slider'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: CarouselSlider(
            options: CarouselOptions(autoPlay: true),
            items: imagesPath.map((imagePath) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                    ),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              );
            }).toList()),
      ),
    ));
  }
}
