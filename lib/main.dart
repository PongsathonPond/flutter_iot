import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'solar_page.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IDEV IOT APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    await Future.delayed(const Duration(seconds: 3));

    FlutterNativeSplash.remove();
  }

  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color.fromRGBO(74, 72, 72, 100),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 18, left: 24, right: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'HI Pond',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Pond',
                    ),
                  ),
                  RotatedBox(
                    quarterTurns: 135,
                    child: Icon(
                      Icons.bar_chart_rounded,
                      size: 28,
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    const SizedBox(height: 32),
                    Center(
                        child: SvgPicture.asset(
                      'assets/images/home.svg',
                      width: 10,
                      height: 200,
                    )),
                    const SizedBox(height: 30),
                    const Center(
                      child: Text(
                        'IDEV IOT APP',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Pond',
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'Service',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Pond',
                          color: Colors.white),
                    ),
                  ],
                ),

                // child: ListView(
                //   physics: const BouncingScrollPhysics(),
                //   children: [
                //     const SizedBox(height: 32),
                //     Center(
                //         child: SvgPicture.asset(
                //       'assets/images/home.svg',
                //       width: 10,
                //       height: 200,
                //     )
                //         // Image.asset('assets/images/123.jpeg', scale: 1.2),
                //         ),
                //     const SizedBox(height: 16),
                //     const Center(
                //       child: Text(
                //         'IDEV IOT APP',
                //         style: TextStyle(
                //           fontSize: 28,
                //           fontWeight: FontWeight.bold,
                //           fontFamily: 'Pond',
                //           color: Colors.blueAccent,
                //         ),
                //       ),
                //     ),
                //     const SizedBox(height: 20),
                //     const Text(
                //       'Service',
                //       style: TextStyle(
                //           fontSize: 18,
                //           fontWeight: FontWeight.bold,
                //           fontFamily: 'Pond',
                //           color: Colors.white),
                //     ),
                //
                //   ],
                // )
              ),
              Expanded(
                flex: 2,
                child: GridView.count(
                  crossAxisCount: 3,
                  children: [
                    //TODO:CCTV
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: Container(
                        margin: const EdgeInsets.only(
                            top: 1, left: 1, right: 1, bottom: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/images/cctv1.svg", width: 70),
                              // Image.asset('assets/images/mcctv.png'),
                              const SizedBox(height: 6),
                              const Text(
                                'CCTV',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Pond',
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //TODO:LIGHT
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: Container(
                        margin: const EdgeInsets.only(
                            top: 1, left: 1, right: 1, bottom: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/images/light.svg", width: 70),
                              // Image.asset('assets/images/mcctv.png'),
                              const SizedBox(height: 6),
                              const Text(
                                'LIGHT',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Pond',
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //TODO:SOLAR
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SolarPage(),
                          ),
                        );

                      },
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: Container(
                          margin: const EdgeInsets.only(top: 1, left: 1, right: 1, bottom: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset("assets/images/solar.svg", width: 70),
                                const SizedBox(height: 6),
                                const Text(
                                  'SOLAR',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Pond',
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    //TODO:FAN
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: Container(
                        margin: const EdgeInsets.only(
                            top: 1, left: 1, right: 1, bottom: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/images/fan.svg", width: 70),
                              // Image.asset('assets/images/mcctv.png'),
                              const SizedBox(height: 6),
                              const Text(
                                'FAN',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Pond',
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //TODO:SECURITY
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: Container(
                        margin: const EdgeInsets.only(
                            top: 1, left: 1, right: 1, bottom: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/images/security.svg", width: 70),
                              // Image.asset('assets/images/mcctv.png'),
                              const SizedBox(height: 6),
                              const Text(
                                'SECURITY',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Pond',
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //TODO:SETTING
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: Container(
                        margin: const EdgeInsets.only(
                            top: 1, left: 1, right: 1, bottom: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/images/setting.svg", width: 70),
                              // Image.asset('assets/images/mcctv.png'),
                              const SizedBox(height: 6),
                              const Text(
                                'SETTING',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Pond',
                                  color: Colors.white,
                                ),
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
      ),
    );
  }
}
