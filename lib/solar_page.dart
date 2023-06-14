
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SolarPage extends StatefulWidget {
  const SolarPage({super.key});

  @override

  State<SolarPage> createState() => _SolarPageState();
}

class _SolarPageState extends State<SolarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(74, 72, 72, 100),
      appBar: AppBar(
        backgroundColor:Color.fromRGBO(74, 72, 72, 100),
        automaticallyImplyLeading: false,
        leadingWidth: 100,
        leading: ElevatedButton.icon(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_left_sharp),
          label: const Text('Back'),
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: Color.fromRGBO(58, 56, 56, 100),
          ),
        ),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  const SizedBox(height: 32),
                  Center(
                      child: SvgPicture.asset(
                        'assets/images/solar.svg',
                        width: 10,
                        height: 150,
                      )),
                  const SizedBox(height: 30),
                  const Center(
                    child: Text(
                    'SOLAR MANAGEMENT',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Pond',
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(7),
                    child: Container(
                      margin: const EdgeInsets.only(
                          top: 1, left: 1, right: 1, bottom: 4),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 5,
                            blurRadius: 6,
                            offset:
                            Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          stops: [
                            0.1,
                            0.4,
                          ],
                          colors: [
                            Colors.blueAccent,
                            Colors.blue,
                          ],
                        ),
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'SOLAR 1',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Pond',
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'STATUS:OFF',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Pond',
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 25),
                            LiteRollingSwitch(
                              value: false,
                              colorOn: Colors.lightGreen,
                              colorOff: Colors.grey,
                              iconOff: Icons.power_settings_new,
                              textSize: 16.0,
                              textOffColor:Colors.white ,
                              textOnColor:Colors.white ,
                              onChanged: (bool state) {
                                print('Current State of SWITCH IS: $state');
                              },
                              onDoubleTap: () {},
                              onSwipe: () {},
                              onTap: () {},
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(7),
                    child: Container(
                      margin: const EdgeInsets.only(
                          top: 1, left: 1, right: 1, bottom: 4),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 5,
                            blurRadius: 6,
                            offset:
                            Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          stops: [
                            0.1,
                            0.4,
                          ],
                          colors: [
                            Colors.blueAccent,
                            Colors.blue,
                          ],
                        ),
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'SOLAR 2',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Pond',
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'STATUS:OFF',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Pond',
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 25),
                            LiteRollingSwitch(
                              value: false,
                              colorOn: Colors.lightGreen,
                              colorOff: Colors.grey,
                              iconOff: Icons.power_settings_new,
                              textSize: 16.0,
                              textOffColor:Colors.white ,
                              textOnColor:Colors.white ,
                              onChanged: (bool state) {
                                print('Current State of SWITCH IS: $state');
                              },
                              onDoubleTap: () {},
                              onSwipe: () {},
                              onTap: () {},
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



