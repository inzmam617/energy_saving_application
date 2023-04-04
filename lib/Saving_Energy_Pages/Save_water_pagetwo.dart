import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Save_Water_Page extends StatefulWidget {
  const Save_Water_Page({Key? key}) : super(key: key);

  @override
  State<Save_Water_Page> createState() => _Save_Water_PageState();
}

class _Save_Water_PageState extends State<Save_Water_Page> {
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

                    "assets/Group 3927.svg",
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
                                "Flip to find a match!",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              )
                            ],
                          ),
                        ),
                      ),
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
                          onPressed: () {},
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
