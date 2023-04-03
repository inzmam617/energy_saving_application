import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WaterQuiz extends StatelessWidget {
  const WaterQuiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC9EAFD),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [

          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            child: Stack(children: [
              SvgPicture.asset("assets/Group 5265 (1).svg",fit: BoxFit.cover,),
              Padding(
                padding: const EdgeInsets.only(top: 30,left: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back,color: Colors.black,),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(-210, 50),

                child: Align(
                  alignment: Alignment.bottomLeft,
                    child: SvgPicture.asset("assets/Group 5262.svg",fit: BoxFit.cover,)),
              )
            ]),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height  - MediaQuery.of(context).size.height / 2,
            child: Stack(
              children: [
                Column(
                children: [

                ],
              ),
                ]
            ),

          )
        ],
      ),
    );
  }
}
