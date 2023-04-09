import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'ElectricityTipsPage.dart';

class ElectricityParagraphPageThree extends StatelessWidget {
  const ElectricityParagraphPageThree({Key? key}) : super(key: key);

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
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: SvgPicture.asset(
                    "assets/city-svgrepo-com.svg",
                    fit: BoxFit.scaleDown,
                  ),
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
                                "Electricity Demand",
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 25),
                              ),
                              // Text(
                              //   "Flip to find a match!",
                              //   style: TextStyle(
                              //       color: Colors.black, fontSize: 12),
                              // )
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
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text("The demand for electricity in the State of Qatar has increased in the recent years. The maximum network load increased from 941 MW on 1988 to 3,990 MW on 2008 and reached to 6255 MW in 2012, while the demand jumped to 8600 MW in 2020. An increase in the electrical load of Kahramaa network is expected to reach 8875 MW by the end of August 2021.",
                                  style:TextStyle(color: Colors.black54,fontSize: 18) ,textAlign: TextAlign.start,),
                              ),
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
                                      MaterialStateProperty.all(Colors.cyan)),
                                  onPressed: () {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                                      return ElectricityTipsPage();
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
