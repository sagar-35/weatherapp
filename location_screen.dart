// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:weather_today/screens/city_screen.dart';
import 'package:weather_today/utils/constants.dart';
import 'package:weather_today/utils/custom_paint.dart';

class LocationScreen extends StatefulWidget {
  @override
  LocationScreenState createState() => LocationScreenState();
}

class LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/location_background.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.09),
              BlendMode.darken,
            ),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 16.0),
              Padding(
                padding: EdgeInsets.only(
                  top: 24,
                  left: 16.0,
                  right: 16.0,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        '23°',
                        style: kTempTextStyle,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'images/ic_current_location.png',
                        width: 32.0,
                      ),
                    ),
                    SizedBox(width: 24.0),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CityScreen(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'images/ic_search.png',
                        width: 32.0,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(width: 16.0),
                    Image.asset(
                      'images/ic_location_pin.png',
                      width: 24.0,
                      height: 24.0,
                    ),
                    SizedBox(width: 10),
                    Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: Text(
                        'Dhaka',
                        textAlign: TextAlign.center,
                        style: kSmallTextStyle.copyWith(
                          fontSize: 16.0,
                          color: Colors.black45,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 190,
                child: CustomPaint(
                  painter: MyCustomPaint(),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 24.0,
                          bottom: 24.0,
                        ),
                        child: Text(
                          'Weather Today',
                          style: kConditionTextStyle.copyWith(fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
