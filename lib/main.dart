import 'dart:math';

import 'package:flutter/material.dart';
import 'package:galaxy_planets/pages/earth_page.dart';
import 'package:galaxy_planets/pages/mars_page.dart';
import 'package:galaxy_planets/pages/mercury_page.dart';
import 'package:galaxy_planets/pages/moon_page.dart';
import 'package:galaxy_planets/pages/naptune_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.ralewayTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      routes:{
        '/': (context) => const HomePage(),
        'mars_page': (context) => const MarsPage(),
        'naptune_page': (context) => const NaptunePage(),
        'moon_page': (context) => const MoonPage(),
        'earth_page': (context) => const EarthPage(),
        'mercury_page': (context) => const MercuryPage(),
      },
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  late AnimationController infinityRotationController;

  @override
  void initState() {
    super.initState();
    infinityRotationController = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 4000),
    );
    infinityRotationController.repeat();
  }
  TextStyle myStyle = const TextStyle(
    color: Colors.white,
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  TextStyle myAstyle = const TextStyle(
    color: Color(0xff7c79a8),
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );

  TextStyle myBstyle = const TextStyle(
    color: Color(0xff7c79a8),
    fontSize: 10,
    fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3e3962),
      appBar: AppBar(
        title: const Text("Treva"),
        centerTitle: true,
        actions: const [
          Icon(Icons.search),
        ],
        leading: const Icon(Icons.menu),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(30),
          child: Column(
            children: [
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("mars_page");
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 50),
                      decoration: BoxDecoration(
                        color: const Color(0xff424172),
                        boxShadow: const [
                          BoxShadow(color: Colors.black26,
                            offset: Offset(5.0,5.0),
                            blurRadius: 10,
                            spreadRadius: 2,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 170,
                      width: 500,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(90, 10, 10, 10),
                        height: double.infinity,
                        width: 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Mars", style: myStyle,),
                                const Spacer(),
                                const Icon(Icons.more_vert, color: Colors.white,),
                              ],
                            ),
                            Column(
                              children: [
                                Text("Milkyway Galaxy",style: myAstyle,),
                                const SizedBox(height: 10),
                              ],
                            ),
                            Container(
                              color: Colors.lightBlueAccent,
                              height: 5,
                              width: 40,
                            ),
                            const SizedBox(height: 30),
                            Row(
                              children: [
                                Image.asset("image/ic_distance.png",height: 20),
                                const SizedBox(width: 10),
                                Text("54.6m km",style: myBstyle,),
                                const SizedBox(width: 15),
                                Image.asset("image/ic_gravity.png",height: 20),
                                const SizedBox(width: 10),
                                Text("3.711 m/s²",style: myBstyle,),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 25, 10, 20),
                        child: AnimatedBuilder(
                          animation: infinityRotationController,
                          child: Image.asset("image/mars.png", scale: 3),
                          builder: (context, child) {
                            return Transform.rotate(angle: infinityRotationController.value * pi*2,
                              child: child,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              // 2
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("naptune_page");
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 50),
                      decoration: BoxDecoration(
                        color: const Color(0xff424172),
                        boxShadow: const [
                          BoxShadow(color: Colors.black26,
                            offset: Offset(5.0,5.0),
                            blurRadius: 10,
                            spreadRadius: 2,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 170,
                      width: 500,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(90, 10, 10, 10),
                        height: double.infinity,
                        width: 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Neptune", style: myStyle,),
                                const Spacer(),
                                const Icon(Icons.more_vert, color: Colors.white,),
                              ],
                            ),
                            Column(
                              children: [
                                Text("Milkyway Galaxy",style: myAstyle,),
                                const SizedBox(height: 10),
                              ],
                            ),
                            Container(
                              color: Colors.lightBlueAccent,
                              height: 5,
                              width: 40,
                            ),
                            const SizedBox(height: 30),
                            Row(
                              children: [
                                Image.asset("image/ic_distance.png",height: 20),
                                const SizedBox(width: 10),
                                Text("2.70b km",style: myBstyle,),
                                const SizedBox(width: 15),
                                Image.asset("image/ic_gravity.png",height: 20),
                                const SizedBox(width: 10),
                                Text("11.5m/s²",style: myBstyle,),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 25, 10, 20),
                        child: AnimatedBuilder(
                          animation: infinityRotationController,
                          child: Image.asset("image/neptune.png", scale: 3),
                          builder: (context, child) {
                            return Transform.rotate(angle: infinityRotationController.value * pi*2,
                              child: child,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              // 3
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("moon_page");
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 50),
                      decoration: BoxDecoration(
                        color: const Color(0xff424172),
                        boxShadow: const [
                          BoxShadow(color: Colors.black26,
                            offset: Offset(5.0,5.0),
                            blurRadius: 10,
                            spreadRadius: 2,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 170,
                      width: 500,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(90, 10, 10, 10),
                        height: double.infinity,
                        width: 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Moon", style: myStyle,),
                                const Spacer(),
                                const Icon(Icons.more_vert, color: Colors.white,),
                              ],
                            ),
                            Column(
                              children: [
                                Text("Milkyway Galaxy",style: myAstyle,),
                                const SizedBox(height: 10),
                              ],
                            ),
                            Container(
                              color: Colors.lightBlueAccent,
                              height: 5,
                              width: 40,
                            ),
                            const SizedBox(height: 30),
                            Row(
                              children: [
                                Image.asset("image/ic_distance.png",height: 20),
                                const SizedBox(width: 10),
                                Text("384.4k km",style: myBstyle,),
                                const SizedBox(width: 15),
                                Image.asset("image/ic_gravity.png",height: 20),
                                const SizedBox(width: 10),
                                Text("1.62m/s²",style: myBstyle,),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 25, 10, 20),
                        child: AnimatedBuilder(
                          animation: infinityRotationController,
                          child: Image.asset("image/moon.png", scale: 3),
                          builder: (context, child) {
                            return Transform.rotate(angle: infinityRotationController.value * pi*2,
                              child: child,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              // 4
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("earth_page");
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 50),
                      decoration: BoxDecoration(
                        color: const Color(0xff424172),
                        boxShadow: const [
                          BoxShadow(color: Colors.black26,
                            offset: Offset(5.0,5.0),
                            blurRadius: 10,
                            spreadRadius: 2,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 170,
                      width: 500,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(90, 10, 10, 10),
                        height: double.infinity,
                        width: 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Earth", style: myStyle,),
                                const Spacer(),
                                const Icon(Icons.more_vert, color: Colors.white,),
                              ],
                            ),
                            Column(
                              children: [
                                Text("Milkyway Galaxy",style: myAstyle,),
                                const SizedBox(height: 10),
                              ],
                            ),
                            Container(
                              color: Colors.lightBlueAccent,
                              height: 5,
                              width: 40,
                            ),
                            const SizedBox(height: 30),
                            Row(
                              children: [
                                Image.asset("image/ic_distance.png",height: 20),
                                const SizedBox(width: 10),
                                Text("149.6k km",style: myBstyle,),
                                const SizedBox(width: 15),
                                Image.asset("image/ic_gravity.png",height: 20),
                                const SizedBox(width: 10),
                                Text("1.62m/s²",style: myBstyle,),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 25, 10, 20),
                        child: AnimatedBuilder(
                          animation: infinityRotationController,
                          child: Image.asset("image/earth.png", scale: 3),
                          builder: (context, child) {
                            return Transform.rotate(angle: infinityRotationController.value * pi*2,
                              child: child,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              // 5
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("mercury_page");
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 50),
                      decoration: BoxDecoration(
                        color: const Color(0xff424172),
                        boxShadow: const [
                          BoxShadow(color: Colors.black26,
                            offset: Offset(5.0,5.0),
                            blurRadius: 10,
                            spreadRadius: 2,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 170,
                      width: 500,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(90, 10, 10, 10),
                        height: double.infinity,
                        width: 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Mercury", style: myStyle,),
                                const Spacer(),
                                const Icon(Icons.more_vert, color: Colors.white,),
                              ],
                            ),
                            Column(
                              children: [
                                Text("Milkyway Galaxy",style: myAstyle,),
                                const SizedBox(height: 10),
                              ],
                            ),
                            Container(
                              color: Colors.lightBlueAccent,
                              height: 5,
                              width: 40,
                            ),
                            const SizedBox(height: 30),
                            Row(
                              children: [
                                Image.asset("image/ic_distance.png",height: 20),
                                const SizedBox(width: 10),
                                Text("149.6k km",style: myBstyle,),
                                const SizedBox(width: 15),
                                Image.asset("image/ic_gravity.png",height: 20),
                                const SizedBox(width: 10),
                                Text("1.62m/s²",style: myBstyle,),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 25, 10, 20),
                        child: AnimatedBuilder(
                          animation: infinityRotationController,
                          child: Image.asset("image/mercury.png", scale: 3),
                          builder: (context, child) {
                            return Transform.rotate(angle: infinityRotationController.value * pi*2,
                              child: child,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );

  }
}

