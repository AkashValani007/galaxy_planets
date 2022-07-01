import 'dart:math';
import 'package:flutter/material.dart';

class MercuryPage extends StatefulWidget {
  const MercuryPage({Key? key}) : super(key: key);

  @override
  State<MercuryPage> createState() => _MercuryPageState();
}

class _MercuryPageState extends State<MercuryPage> with SingleTickerProviderStateMixin{

  late AnimationController infinityRotationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    infinityRotationController = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 4000)
    );
    infinityRotationController.repeat();
  }

  TextStyle myStyle = const TextStyle(
      color: Colors.white,
      fontSize: 30,fontWeight: FontWeight.bold
  );

  TextStyle myTstyle = const TextStyle(
      color: Color(0xff7c79a8),
      fontSize: 20,fontWeight: FontWeight.bold
  );

  TextStyle mysstyle = const TextStyle(
      color: Color(0xff7c79a8),
      fontSize: 15,fontWeight: FontWeight.bold
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back)
            )

        ),
        body: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        child: Image.asset('image/download.jpg',fit: BoxFit.fill,),

                      )
                  ),
                  Expanded(
                    child: Container(
                        color:  const Color(0xff3e3962),
                        height: double.infinity,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                margin: const EdgeInsets.fromLTRB(30, 140, 30, 10),

                                height: 150,
                                width: 400,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("O V E R V I E W",style:
                                    TextStyle(
                                        color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 10,),
                                    Container(
                                      color: Colors.lightBlueAccent,
                                      height: 3,
                                      width: 40,
                                    ),
                                    const SizedBox(height: 10,),
                                    Text("Mercury is the fourth planet from the Sun and the"
                                        " second-smallest planet in the Solar System,"
                                        " being larger than only Mercury. In English, "
                                        "Mars carries the name of the Roman god of war.",
                                      style: mysstyle,),
                                  ],
                                )
                            ),
                            Container(
                              height:  68,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                color: Colors.lightBlueAccent,
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.blue,
                                    Colors.lightBlueAccent,
                                  ],
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text("START FROM",style: TextStyle(
                                          color: Colors.white70,fontSize: 15,fontWeight: FontWeight.bold),
                                      ),
                                      Text("₹50.20m",style: TextStyle(
                                          color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                  const SizedBox(width: 20,),
                                  const Text("BOOK NOW",style: TextStyle(
                                      color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),

                                  const Icon(Icons.arrow_forward_ios,color: Colors.white,)
                                ],
                              ),
                            ),
                          ],
                        )
                    ),
                  ),

                ],
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.fromLTRB(30, 255, 30, 10),
                height: 230,
                width: 400,
                decoration: BoxDecoration(
                    color: const Color(0xff424172),
                    boxShadow:const [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30,),
                    Text("Mercury",style: myStyle,),
                    Text("Milkyway Galaxy",style: myTstyle,),
                    const SizedBox(height: 10,),
                    Container(
                      color: Colors.lightBlueAccent,
                      height: 4,
                      width: 40,
                    ),
                    const SizedBox(height: 20,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("image/ic_distance.png",height: 20,),
                        // SizedBox(width: 10,),
                        Text("149.6k km",style: mysstyle,),
                        Image.asset("image/ic_gravity.png",height: 20,),
                        // SizedBox(width: 10,),
                        Text("1.62m/s²",style: mysstyle,)
                      ],
                    )
                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(155, 200, 30, 10),
                  child: AnimatedBuilder(
                      animation: infinityRotationController,
                      child: Image.asset("image/mercury.png",scale: 3,),
                      builder: (context, child) {
                        return Transform.rotate(
                          angle: infinityRotationController.value *  pi *2,
                          child: child,
                        );
                      }
                  )
              )
            ]
        )
    );
  }
}