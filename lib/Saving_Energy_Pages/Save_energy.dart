import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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

            child: Column(
              children: [

              ],
            )
          )
        ],
      ),
    );
  }
}
