import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:http/http.dart';
import 'package:manna_vhack2024/components/plainCard.dart';
import 'package:manna_vhack2024/components/arrowCard.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  String location = 'Gelugor, Penang'; // location name for the UI
  late String time = 'test'; // the time in that location
  late bool isDayTime; // true or false if daytime or not
  late String datetime;
  String formattedDate = 'test';

  Future<void> getTime() async {

    try {
      // make the request
      Response response = await get(Uri.parse("http://worldtimeapi.org/api/timezone/asia/kuala_lumpur"));
      Map data = jsonDecode(response.body);

      // get properties from data
      datetime = data['datetime'];

      String dow = data['utc_offset'];
      dow = dow.substring(1,3);

      // Create DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(dow)));

      // set the time property
      isDayTime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);

      // format the date
      var outputFormat = DateFormat("EEEE, d MMMM");
      formattedDate = outputFormat.format(now);
    } catch (e) {
      print('caught error: $e');
      time = 'could not get time data';
      formattedDate = 'could not get time data';
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getTime(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator(); // Show loading spinner while waiting
        } else if (snapshot.error != null) {
          return Text('Error: ${snapshot.error}'); // Show error message if something went wrong
        } else {
          return Scaffold(
            body: SingleChildScrollView(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(111, 149, 237, 100),
                      Colors.white,
                    ],
                  ),
                ),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 60,
                      ),
                      Text(
                        formattedDate,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                        ),
                      ), 
                      Text(
                        location,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 20,
                        ),
                      ), 
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        time,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 48,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(
                            width: 65,
                          ),
                          Image.asset(
                            'assets/weather.png',
                            fit: BoxFit.contain,
                            width: 90,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            '30°C',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 56,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/wind.png',
                            fit: BoxFit.contain,
                            width: 50,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: <Widget>[
                              const Text(
                                '2km/h',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                ),
                              ),
                              Text(
                                'Wind Speed',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            'assets/humidity.png',
                            fit: BoxFit.contain,
                            width: 50,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: <Widget>[
                              const Text(
                                '50%',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                ),
                              ),
                              Text(
                                'Humidity',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      plainCard(
                        borderColor: 'blue',
                        borderWidth: 3.0,
                        bgColor: 'white',
                        img: 'thunder.png',
                        title: 'Expected Thunderstorm @ 4pm',
                        content: 'You should stake small and young trees!',
                        showProgressBar: false,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            'Your Crops',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      plainCard(
                        borderColor: 'blue',
                        borderWidth: 1.0,
                        bgColor: 'green',
                        img: 'tomato.jpeg',
                        title: 'Tomato',
                        content: 'Current: Seeding Stage',
                        showProgressBar: true,
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(25.0, 0, 25.0, 11),
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                      const arrowCard(
                        img: 'plant_home.png',
                        title: 'Start Planting',
                        content: 'Follow step-by-step guide to plan your planting!',
                        nav: '/soil',
                      ),
                      const arrowCard(
                        img: 'pest_home.png',
                        title: 'Pest Management',
                        content: 'Follow step-by-step guideline to check your crops\' health condition.',
                        nav: '/soil',
                      ),
                      const arrowCard(
                        img: 'news.png',
                        title: '[12/3/2024]Tomato Disease',
                        content: 'Early blight disease reported in tomato crops in Penang.',
                        nav: '/soil',
                      ),
                    ],
                  ),
                ),
              ),
            )
          );
        }
      }
    );
  }
}