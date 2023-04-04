import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ElectricityTipsPage extends StatelessWidget {
  const ElectricityTipsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC9EAFD),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
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
                  Container(
                    width: MediaQuery.of(context).size.width - 80,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 3.5)
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // SvgPicture.asset("assets/Group 4941.svg",fit:BoxFit.scaleDown,),
                        SizedBox(width: 10,),
                        Text("Tips to Save Electricity"),
                        // SizedBox(width: 10,),

                        // SvgPicture.asset("assets/Group 5237.svg",fit:BoxFit.scaleDown,),

                        // Group 5237.svg


                      ],
                    ),
                  ),

                ],
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/CompositeLayer (3).svg",),
                              SizedBox(height: 10,),
                              Text("Adjust the contracted \n power",textAlign: TextAlign.center,)
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              SvgPicture.asset("assets/Group 5256.svg"),
                              SizedBox(height: 10,),
                              Text("Concentrate \n energy use in ares of \n use",textAlign: TextAlign.center,)
                            ],
                          )

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SvgPicture.asset("assets/Group 5254.svg",),
                              SizedBox(height: 10,),
                              Text("Close the doors",textAlign: TextAlign.center,)
                            ],
                          ),
                          Column(
                            children: [
                              SvgPicture.asset("assets/Group 5253.svg"),
                              SizedBox(height: 10,),
                              Text("Efficient appliances",textAlign: TextAlign.center,)
                            ],
                          )

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SvgPicture.asset("assets/Group 5251.svg",),
                              SizedBox(height: 10,),
                              Text("Short showers and \n instense dishwashers",textAlign: TextAlign.center,)
                            ],
                          ),
                          Column(
                            children: [
                              SvgPicture.asset("assets/Group 5252.svg"),
                              SizedBox(height: 10,),
                              Text("Cook several dishes \n at once",textAlign: TextAlign.center,)
                            ],
                          )

                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child:    Column(
                        children: [
                          SvgPicture.asset("assets/Group 5257.svg"),
                          SizedBox(height: 10,),
                          Text("Take advantage of natural light for lighting \n rooms and in summer protect your home \n from the sun when it is hottest.",textAlign: TextAlign.center,)
                        ],
                      )
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
