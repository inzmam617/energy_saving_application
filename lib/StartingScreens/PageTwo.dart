import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../SignIn_Up_pages/SignIn.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // backgroundColor: const Color(0xffC9EAFD),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height - 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              boxShadow: [BoxShadow(color: Colors.blueGrey, blurRadius: 3.5)],
              color: Color(0xffC9EAFD),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2.2,
                  // color: Colors.black,
                  child: Stack(children: [
                    SizedBox(
                      height: 500,
                      width: double.infinity,
                      child: Stack(children: [
                        Transform.translate(
                          offset: Offset(-200, -20),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: SvgPicture.asset(
                              "assets/Group 5262.svg",
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.topRight,
                            child:
                            SvgPicture.asset("assets/Ellipse 10 (1).svg")),
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Skip",
                                    style: TextStyle(color: Colors.black),
                                  ))
                            ],
                          ),
                        ),
                      ]),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: SvgPicture.asset(
                            "assets/CompositeLayer (1).svg",
                            fit: BoxFit.scaleDown,
                            height: 300,
                          ),
                        ),
                      ),
                    )
                  ]),
                ),
                Expanded(
                  child: Stack(children: [
                    Column(
                      children: [
                        Center(
                          child: Text(
                            "Loren ipsum dolor \n sit amet consuter",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text(
                            "Lorem ipsum dolor sit amet, \n consectetur adipiscing alit,",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: SvgPicture.asset("assets/scroll.svg"),
                        ),
                      ],
                    ),
                    Align(
                        alignment: Alignment.topRight,
                        child: SvgPicture.asset(
                          "assets/Ellipse 10 (1).svg",
                          fit: BoxFit.scaleDown,
                          height: 100,
                        )),
                    Transform.translate(
                      offset: Offset(100, 100),
                      child: Transform.rotate(
                        angle: 300,
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: SvgPicture.asset(
                              "assets/Group 3809.svg",
                              fit: BoxFit.cover,
                              // height: 100,
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 35),
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: SvgPicture.asset(
                            "assets/Ellipse 9.svg",
                            fit: BoxFit.scaleDown,
                            height: 50,
                          )),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          Center (
            child: SizedBox(

              width: 80,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50)
                        )
                    )),
                    backgroundColor:
                    MaterialStateProperty.all(const Color(0xffC9EAFD))),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                    return const SignIn();
                  }));
                },
                child: const Center(
                  child: Icon(

                    Icons.arrow_circle_right_sharp,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
