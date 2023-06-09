import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'ElectricityparagraphPageOne.dart';
import 'ElectricityparagraphPageTwo.dart';

class Save_Electricity extends StatelessWidget {
  const Save_Electricity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC9EAFD),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2.5,
            width: MediaQuery.of(context).size.width,
            child: Stack(children: [
              Center(
                child: SvgPicture.asset(
                  "assets/Group 4380.svg",
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
          Container(
            color: Colors.white,
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
              SizedBox(
                child: Column(
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
                                "Save Electricity",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 25),
                              ),
                              Text(
                                "Match the text with Graphics",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 12),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 100,
                                  color: Color(0xffD5ECFE),
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: Center(
                                    child: Text(
                                      "Unplug the cable",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  color: Color(0xffBEE3FD),
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: SvgPicture.asset(
                                    "assets/bed.svg",
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Container(
                                  height: 100,
                                  color: Color(0xffD5ECFE),
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: Center(
                                    child: Text(
                                      "Turn off Buttons",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  color: Color(0xffBEE3FD),
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: SvgPicture.asset(
                                    "assets/btn.svg",
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Container(
                                  height: 100,
                                  color: Color(0xffD5ECFE),
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: Center(
                                    child: Text(
                                      "Switch off light \n when sleeping",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  color: Color(0xffBEE3FD),
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: SvgPicture.asset(
                                    "assets/cable.svg",
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(
                              height: 10,
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
                                          MaterialStateProperty.all(
                                              Colors.cyan)),
                                  onPressed: () {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                                      return ElectricityParagraphPageTwo();
                                    }));
                                  },
                                  child: Text(
                                    "Next",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
