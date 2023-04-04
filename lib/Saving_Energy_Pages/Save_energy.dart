import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Quizespage/SaveWaterQuiz.dart';
import 'ElectricityparagraphPageOne.dart';
import 'Save_Electricity.dart';

class SaveEnergy extends StatelessWidget {
  const SaveEnergy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0xffC9EAFD),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 4,
            child: Stack(children: [
              // Container(
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Transform.translate(
                    offset: const Offset(-150, -100),
                    child: SvgPicture.asset(
                      "assets/Group 5262.svg",
                      height: 400,
                      fit: BoxFit.cover,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(onPressed: (){
                          Navigator.of(context).pop();
                        }, icon: Icon(Icons.arrow_back ,color: Colors.black,)),
                        const SizedBox(
                          width: 50,
                        ),
                        Center(
                          child: const Text(
                            "How to save Energy?",
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),

                  ],
                ),
              ),

            ]),
          ),
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height - MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width,
            child: Transform.translate(
              offset: Offset(0, -50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                          return WaterQuiz();
                        }));
                      },
                      child: SizedBox(

                        height: 180,
                        width: MediaQuery.of(context).size.width /2 -20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Stack(
                              children: [
                                Center(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(color: Colors.grey, blurRadius: 5.0)
                                        ],
                                        color: Colors.white,
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                    height: 180,
                                    width: MediaQuery.of(context).size.width /2 - 50,


                                    // color: Colors.blue,
                                  ),
                                ),
                                Center(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(color: Colors.grey, blurRadius: 5.0)
                                        ],
                                        color: Colors.white,
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                    height: 170,
                                    width: MediaQuery.of(context).size.width /2 - 35,


                                    // color: Colors.black,
                                  ),
                                ) ,
                                Center(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(color: Colors.grey, blurRadius: 5.0)
                                        ],
                                        color: Colors.white,
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                    height: 160,
                                    width: MediaQuery.of(context).size.width /2 - 20,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset("assets/water.svg"),
                                          SizedBox(height: 10,),
                                          Text("Save Water Quiz"),
                                        ],
                                      )


                                    // color: Colors.green,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                          return ElectricityParagraphPageOne();
                        }));

                      },
                      child: SizedBox(
                        height: 180,
                        width: MediaQuery.of(context).size.width /2 -20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Stack(

                              children: [
                                Center(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(color: Colors.grey, blurRadius: 5.0)
                                        ],
                                        color: Colors.white,
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                    height: 180,
                                    width: MediaQuery.of(context).size.width /2 - 50,
                                    // color: Colors.blue,
                                  ),
                                ),
                                Center(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(color: Colors.grey, blurRadius: 5.0)
                                        ],
                                        color: Colors.white,
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                    height: 170,
                                    width: MediaQuery.of(context).size.width /2 - 35,

                                    // color: Colors.black,
                                  ),
                                ) ,
                                Center(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(color: Colors.grey, blurRadius: 5.0)
                                        ],
                                        color: Colors.white,
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                    height: 160,
                                    width: MediaQuery.of(context).size.width /2  -20,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset("assets/elect.svg"),
                                        SizedBox(height: 10,),
                                        Text("Save Electricity Quiz"),
                                      ],
                                    ),

                                    // color: Colors.green,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}
