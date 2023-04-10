import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Saving_Energy_Pages/Save_water_pagetwo.dart';
import '../Saving_Energy_Pages/WaterparagraphPageOne.dart';

class WaterQuiz extends StatefulWidget {
  const WaterQuiz({Key? key}) : super(key: key);

  @override
  State<WaterQuiz> createState() => _WaterQuizState();
}

class _WaterQuizState extends State<WaterQuiz> {
  bool first = true;
  bool second = false;
  bool third = false;
  bool fourth = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC9EAFD),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2.5,
              width: MediaQuery.of(context).size.width,
              child: Stack(children: [
                Center(
                  child: SvgPicture.asset(
                    "assets/women.svg",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(-210, 50),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: SvgPicture.asset(
                        "assets/Group 5262.svg",
                        fit: BoxFit.cover,
                      )),
                )
              ]),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).size.height / 2.5,
              child: Stack(children: [
                Transform.translate(
                  offset: Offset(200, 10),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: SvgPicture.asset(
                      "assets/Ellipse 5 (1).svg",
                      fit: BoxFit.scaleDown,
                      height: 350,
                      width: 350,
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(0, 0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: SvgPicture.asset(
                      "assets/Ellipse 10 (1).svg",
                      fit: BoxFit.scaleDown,
                      height: 100,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Transform.translate(
                      offset: Offset(0, -30),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 5.0)
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20))),
                          height: 80,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "How can we save water?",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              Text(
                                "Select all the options with righ answer",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              setState(() {

                                first = !first;
                                print(first);
                              });
                            },
                            child:
                            first == true ?
                            Container(
                              decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(color: Colors.grey, blurRadius: 5.0)
                                  ],
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              height: 130,
                              width: MediaQuery.of(context).size.width / 2.5,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/Group 3846.svg",
                                    height: 80,
                                    fit: BoxFit.scaleDown,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Turn off the water when brushing your teeth",textAlign: TextAlign.center,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                  )
                                ],
                              ),
                            ) :Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.redAccent),
                                  boxShadow: const [
                                    BoxShadow(color: Colors.grey, blurRadius: 5.0)
                                  ],
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                              height: 140,
                              width: MediaQuery.of(context).size.width / 2.5,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/Group 3846.svg",
                                    height: 80,
                                    fit: BoxFit.scaleDown,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Turn off the water when brushing your teeth",textAlign: TextAlign.center,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {

                                second = !second;

                              });
                            },
                            child: second == true ? Container(
                              decoration: BoxDecoration(

                                  boxShadow: [
                                    BoxShadow(color: Colors.grey, blurRadius: 5.0)
                                  ],
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              height: 130,
                              width: MediaQuery.of(context).size.width / 2.5,
                              child: Column(
                                children: [
                                  SvgPicture.asset("assets/Group 3898.svg",height: 80,
                                    fit: BoxFit.scaleDown,),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Make sure no leaks in faucets and pipes",textAlign: TextAlign.center, style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                  )
                                ],
                              ),
                            ) : Container(
                              decoration: BoxDecoration(


                                  border: Border.all(color: Colors.redAccent),

                                  boxShadow: [
                                    BoxShadow(color: Colors.grey, blurRadius: 5.0)
                                  ],
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                              height: 140,
                              width: MediaQuery.of(context).size.width / 2.5,
                              child: Column(
                                children: [

                                  SvgPicture.asset("assets/Group 3898.svg",height: 80,
                                    fit: BoxFit.scaleDown,),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Make sure no leaks in faucets and pipes",textAlign: TextAlign.center, style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                  )
                                ],
                              ),
                            )
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              setState(() {

                                third = !third;
                              });
                            },
                            child: third == true ? Container(
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(color: Colors.grey, blurRadius: 5.0)
                                  ],
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              height: 130,
                              width: MediaQuery.of(context).size.width / 2.5,
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    SvgPicture.asset("assets/Group 3915.svg",height: 80,
                                      fit: BoxFit.scaleDown,),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Measure the time",textAlign: TextAlign.center, style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                    )
                                  ],
                                ),
                              ),
                            ) :Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.redAccent),

                                  boxShadow: [
                                    BoxShadow(color: Colors.grey, blurRadius: 5.0)
                                  ],
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                              height: 140,
                              width: MediaQuery.of(context).size.width / 2.5,
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    SvgPicture.asset("assets/Group 3915.svg",height: 80,
                                      fit: BoxFit.scaleDown,),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Measure the time",textAlign: TextAlign.center, style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {

                                fourth = !fourth;
                              });
                            },
                            child: fourth == true ?  Container(
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(color: Colors.grey, blurRadius: 5.0)
                                  ],
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              height: 130,
                              width: MediaQuery.of(context).size.width / 2.5,
                              child: Column(
                                children: [
                                  SvgPicture.asset("assets/Group 3867.svg",height: 80,
                                    fit: BoxFit.scaleDown,),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Take shorter shower 5 min",textAlign: TextAlign.center, style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                  )
                                ],
                              ),
                            ):
                            Container(

                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.redAccent),

                                  boxShadow: [
                                    BoxShadow(color: Colors.grey, blurRadius: 5.0)
                                  ],
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                              height: 140,
                              width: MediaQuery.of(context).size.width / 2.5,
                              child: Column(
                                children: [
                                  SvgPicture.asset("assets/Group 3867.svg",height: 80,
                                    fit: BoxFit.scaleDown,),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Take shorter shower 5 min",textAlign: TextAlign.center, style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                  )
                                ],
                              ),
                            )
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: SizedBox(
                        height: 35,
                        width: 120,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50)))),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.cyan)),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                              return WaterParagraphPage();
                            }));
                          },
                          child: Text(
                            "Next",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
