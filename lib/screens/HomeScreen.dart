import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../models/carousel_model.dart';
import '../models/athletes_model.dart';
import '../constants/text_style.dart';
import '../constants/color_style.dart';
import '../widgets/bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  List<T> map<T>(List list, Function handeler) {
    List<T> result = [];

    for (var i = 0; i < list.length; i++) {
      result.add(
        handeler(i, list[i]),
      );
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBarOlympic(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Olympic Games',
                        style: titleBlkStyle,
                      ),
                      SizedBox(height: 5),
                      Text('Tokyo 2020', style: titleBluStyle),
                    ],
                  ),
                  Container(
                    height: 100,
                    width: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/Tokyo2020.jpeg'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 5,
              ),
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Swiper(
                onIndexChanged: (index) {
                  setState(
                    () {
                      _currentIndex = index;
                    },
                  );
                },
                autoplay: true,
                layout: SwiperLayout.DEFAULT,
                itemCount: carouseldta.length,
                itemBuilder: (BuildContext contex, index) {
                  return Container(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage(carouseldta[index].image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: map<Widget>(
                      carouseldta,
                      (index, image) {
                        return Container(
                          alignment: Alignment.center,
                          height: 3,
                          width: 12,
                          margin: EdgeInsets.only(
                            right: 2,
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: _currentIndex == index
                                ? curosalEColor
                                : tGreyCircleColor,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: bottomRec,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Row(
                          children: [
                            Text('Winners', style: titleBlkStyle),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 180,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: athletes.length,
                          itemBuilder: (contex, index) {
                            return Container(
                              padding: EdgeInsets.all(8),
                              margin: EdgeInsets.only(left: 16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: whiteColor,
                              ),
                              height: 170,
                              width: 140,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(12),
                                        ),
                                        child: Image.asset(
                                          athletes[index].image,
                                          height: 130,
                                          width: 123,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
