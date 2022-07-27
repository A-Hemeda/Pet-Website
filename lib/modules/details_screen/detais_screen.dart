// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../Bloc/cubit.dart';
import '';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Container(color: Colors.brown, width: double.infinity,
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 350,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.9,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                  enlargeCenterPage: true,
                  onPageChanged: ((index, reason) =>
                      AppCubit.get(context).ChangeindexCarouselSider(index)),
                  scrollDirection: Axis.horizontal,
                ),
                items: AppCubit
                    .get(context)
                    .Images
                    .map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Text('${i}');
                    },
                  );
                }).toList(),
              ),
              Center(child: AnimatedSmoothIndicator(
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.white,
                  dotColor: Colors.grey,
                  dotHeight: 20,
                  dotWidth: 30,
                  expansionFactor: 3,
                  spacing: 15,
                ),
                count: AppCubit
                    .get(context)
                    .Images
                    .length,
                activeIndex: AppCubit
                    .get(context)
                    .indexCarouselSider,
              )),
              SizedBox(height: 30,),

            ],
          ),
        );
        SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 40),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    'Esla',
    style: TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: Colors.brown),
    ),
    Row(children: [
    Text(
    'Share by',
    style: TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Colors.brown),
    ),
    Text(
    ': Rawan tarek',
    style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.brown),
    ),
    SizedBox(
    width: 120,
    ),
    Icon(
    Icons.whatsapp,
    color: Colors.brown,
    size: 30,
    ),
    SizedBox(
    width: 5,
    ),
    Icon(
    Icons.phone,
    color: Colors.brown,
    size: 30,
    )
    ]),
    Text(
    'Domestic Short Hair Fredericton, NB',
    style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.brown),
    ),
    Container(
    width: double.infinity,
    height: 80,
    color: Colors.grey[200],
    child: Center(
    child: Text(
    'Domestic Short Hair Fredericton, NB',
    style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.brown),
    ),
    ),
    ),
    Text(
    'About',
    style: TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: Colors.brown),
    ),
    SizedBox(
    height: 5,
    ),
    Text(
    'HOUSE-TRAINE',
    style: TextStyle(fontSize: 26, color: Colors.brown),
    ),
    Text(
    'yes',
    style: TextStyle(fontSize: 26, color: Colors.brown),
    ),
    SizedBox(
    height: 5,
    ),
    Text(
    'HEALTH',
    style: TextStyle(fontSize: 26, color: Colors.brown),
    ),
    Text(
    'Vaccinations up to date, spayed / neutered.',
    style: TextStyle(fontSize: 26, color: Colors.brown),
    ),
    SizedBox(
    height: 5,
    ),
    Text(
    'GOOD IN A HOME WITH',
    style: TextStyle(fontSize: 26, color: Colors.brown),
    ),
    Text(
    'Other cats.',
    style: TextStyle(fontSize: 26, color: Colors.brown),
    ),
    SizedBox(
    height: 5,
    ),
    Text(
    'PREFERS A HOME WITHOUT',
    style: TextStyle(fontSize: 26, color: Colors.brown),
    ),
    Text(
    'Children.',
    style: TextStyle(fontSize: 26, color: Colors.brown),
    ),
    SizedBox(
    height: 5,
    ),
    Container(
    width: double.infinity,
    height: 80,
    color: Colors.grey[200],
    child: Center(
    child: Row(
    children: [
    Icon(
    Icons.add_alert,
    size: 20,
    ),
    Column(
    children: [
    Text(
    'Petfinder recommends that you should always ',
    maxLines: 2,
    style: TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.bold,
    color: Colors.brown,
    ),
    ),
    Text(
    ' take reasonablesecurity steps before making adabtion',
    maxLines: 2,
    style: TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.bold,
    color: Colors.brown,
    ),
    ),
    ],
    ),
    ],
    ),
    ),
    ),
    Text(
    'Meet Elsa',
    style: TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: Colors.brown),
    ),
    SizedBox(
    height: 5,
    ),
    Text(
    'Hi',
    style: TextStyle(fontSize: 20, color: Colors.brown),
    ),
    SizedBox(
    height: 5,
    ),
    Text(
    'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stetclita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sitamet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita',
    maxLines: 20,
    style: TextStyle(fontSize: 15, color: Colors.brown),
    ),
    SizedBox(
    height: 5,
    ),
    Text(
    'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stetclita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sitamet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita',
    maxLines: 20,
    style: TextStyle(fontSize: 15, color: Colors.brown),
    ),
    Container(
    width: double.infinity,
    color: Colors.brown,
    child: Row(
    children: [
    Column(
    children: [
    Text(
    'For any questions',
    style: TextStyle(
    fontSize: 20, color: Colors.brown[100]),
    ),
    Row(
    children: [
    Icon(
    Icons.email,
    color: Colors.brown[100],
    size: 20,
    ),
    Text(
    'Email@petology.com',
    style: TextStyle(
    fontSize: 12, color: Colors.brown[100]),
    ),
    ],
    ),
    Row(
    children: [
    Icon(
    Icons.phone,
    color: Colors.brown[100],
    size: 20,
    ),
    Text(
    '(+2)0123465879',
    style: TextStyle(
    fontSize: 12, color: Colors.brown[100]),
    ),
    ],
    ),
    ],
    ),
    Column(
    children: [
    Text(
    'We are waiting you',
    style: TextStyle(
    fontSize: 20, color: Colors.brown[100]),
    ),
    Row(
    children: [
    Icon(
    Icons.location_on,
    color: Colors.brown[100],
    size: 20,
    ),
    Text(
    'First settlement/Cairo',
    style: TextStyle(
    fontSize: 12, color: Colors.brown[100]),
    ),
    ],
    ),
    Row(
    children: [
    Icon(
    Icons.location_on,
    color: Colors.brown[100],
    size: 20,
    ),
    Text(
    'Cairo/Egypt',
    style: TextStyle(
    fontSize: 12, color: Colors.brown[100]),
    ),
    ],
    ),
    ],
    )
    ],
    ),
    )
    ],
    ),
    ),
    ),
    // body: Column(
    //   children: [
    //     Container(
    //       height: 200,
    //       width: double.infinity,
    //       color: Color(0xff4b2f24),
    //     ),
    //
    //   ],
    // ),
    );
    }
}

ExpandingDotsEffect({required Color activeDotColor, required MaterialColor dotColor, required int dotHeight, required int dotWidth, required int expansionFactor, required int spacing}) {
}
