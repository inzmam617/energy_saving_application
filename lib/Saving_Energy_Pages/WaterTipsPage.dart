import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WaterTipsPage extends StatelessWidget {
  const WaterTipsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC9EAFD),
      body: Column(
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
                      SvgPicture.asset("assets/Group 4941.svg",fit:BoxFit.scaleDown,),
                      SizedBox(width: 10,),
                      Text("Tips to Save Water at home"),
                      SizedBox(width: 10,),

                      SvgPicture.asset("assets/Group 5237.svg",fit:BoxFit.scaleDown,),

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
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("assets/Group 5064.svg",),
                        SvgPicture.asset("assets/Group 5121.svg")

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("assets/Group 4981.svg",),
                        SvgPicture.asset("assets/Group 5194.svg")

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("assets/Group 5235.svg",),
                        SvgPicture.asset("assets/Group 5019.svg")

                      ],
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
                          // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                          //   return WaterParagraphPageThree();
                          // }));

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
          )
        ],
      ),
    );
  }
}
