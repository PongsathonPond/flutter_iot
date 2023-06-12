import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
            duration: 2000,
            splash: const HomePage(),
            nextScreen: const HomePage(),
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Colors.blue),
      debugShowCheckedModeBanner: false,);

  }
}




class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo.shade50,
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
                    child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const SizedBox(height: 32),
                    Center(
                      child:SvgPicture.asset('assets/images/home.svg',width: 250,height: 200,)
                          // Image.asset('assets/images/123.jpeg', scale: 1.2),

                    ),
                    const SizedBox(height: 16),
                    const Center(
                      child: Text(
                        'IDEV IOT',
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text('Service',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                        ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _cardMenu(
                          title: 'CAMERA',
                          icon:'assets/images/temperature.png',
                            color: Colors.blueAccent,
                            fontColor: Colors.white
                        ),
                        _cardMenu(
                          onTap: (){},
                          title: 'TEMPERATURE',
                          icon:'assets/images/temperature.png',
                          color: Colors.blueAccent,
                          fontColor: Colors.white

                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _cardMenu(
                          title: 'ENERGY',
                          icon:'assets/images/water.png',
                        ),
                        _cardMenu(
                          title: 'ENERGY',
                          icon:'assets/images/entertainment.png',
                        ),
                      ],
                    )
                  ],
                ))
              ],
            ),
          ),
        )

    );
  }

  Widget _cardMenu({
    required String title,
    required String icon ,
    VoidCallback? onTap,
    Color color = Colors.white,
    Color fontColor = Colors.grey,

  }){

    return GestureDetector(
    onTap:onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 30),
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: color,

        ),
        child: Column(
          children: [
            Image.asset(icon),
            const SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: fontColor,
              ),
            ),
          ],
        ),
      ),
    );

  }

}
