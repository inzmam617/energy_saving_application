import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC9EAFD),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 3.5,
            child: Stack(children: [
              // Container(
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Transform.translate(
                    offset: const Offset(-150, -150),
                    child: SvgPicture.asset(
                      "assets/Group 5262.svg",
                      height: 500,
                      fit: BoxFit.cover,
                    )),
              ),
              //   // width: MediaQuery.of(context).size.width,
              //   // height: MediaQuery.of(context).size.height / 2.8,
              //   color: const Color(0xffC9EAFD),
              //   // child: SvgPicture.asset("assets/login.svg"),
              // ),

              Padding(
                padding:
                    const EdgeInsets.symmetric( horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(height: 50,),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    "assets/prof.jpg",
                                  ))),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Hello Ahmad",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          height: 35,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  topLeft: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(color: Colors.blue, blurRadius: 5.0)
                              ]),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(color: Colors.grey),
                                  hintText: "Search",
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          height: 35,
                          width: 50,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  shape: MaterialStateProperty.all(
                                      const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(50),
                                              topLeft: Radius.circular(10),
                                              bottomRight:
                                                  Radius.circular(50),
                                              bottomLeft:
                                                  Radius.circular(50))))),
                              // decoration: BoxDecoration(
                              //     color: Colors.white,
                              //     borderRadius:
                              //     BorderRadius.all(Radius.circular(50)),
                              //     boxShadow: [
                              //       BoxShadow(color: Colors.grey, blurRadius: 5.0)
                              //     ]),

                              onPressed: () {},
                              child: SvgPicture.asset(
                                "assets/search.svg",
                                fit: BoxFit.scaleDown,
                              )),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ]),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    )
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Transform.translate(
                    offset: Offset(0, -20),
                    child: Stack(children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: Container(
                            decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey, blurRadius: 5.0)
                                ],
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            // width: 100,
                            height: 175,
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        color: const Color(0xffC9EAFD),
                        width: MediaQuery.of(context).size.width,
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Container(
                            height: 165,
                            decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey, blurRadius: 5.0)
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(20))),
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            height: 155,
                            // width: 135,
                            decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey, blurRadius: 5.0)
                                ],
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 30, left: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "How to ",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      Text(
                                        "save energy?",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      ElevatedButton(
                                          style: ButtonStyle(
                                              shape:
                                                  MaterialStateProperty.all(
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100))),
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.cyan)),
                                          onPressed: () {},
                                          child: Text("Get Started"))
                                    ],
                                  ),
                                ),
                                SvgPicture.asset(
                                  "assets/home.svg",
                                  height: 155,
                                ),
                                SizedBox(
                                  width: 10,
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text("All Services"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap:(){},
                                child: Stack(children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width / 2.5,
                                    height: 130,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20),
                                            topRight: Radius.circular(20)
                                            // bottomRight: Radius.circular(5)
                                            ),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey, blurRadius: 5.0)
                                        ],
                                        color: Color(0xffC9EAFD),),
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 10),
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text("Consumption Bills",style: TextStyle(color: Colors.white,),),
                                      ),
                                    ),

                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 5.0
                                        )
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          topRight: Radius.circular(20)
                                          // bottomRight: Radius.circular(5)
                                          ),
                                    ),
                                    width: MediaQuery.of(context).size.width / 2.5,
                                    height: 100,
                                    child: SvgPicture.asset("assets/bill.svg",fit: BoxFit.scaleDown,),
                                    

                                  ),
                                ]),
                              ),
                              InkWell(
                                onTap:(){},
                                child: Stack(children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width / 2.5,
                                    height: 130,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20),
                                            topRight: Radius.circular(20)
                                            // bottomRight: Radius.circular(5)
                                            ),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey, blurRadius: 5.0)
                                        ],
                                        color: Color(0xffC9EAFD),),
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 10),
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text("Services Interruption",style: TextStyle(color: Colors.white,),),
                                      ),
                                    ),



                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(

                                          color: Colors.grey,
                                          blurRadius: 5.0
                                        )
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          topRight: Radius.circular(20)
                                          // bottomRight: Radius.circular(5)
                                          ),
                                    ),
                                    width: MediaQuery.of(context).size.width / 2.5,
                                    height: 100,
                                    child: SvgPicture.asset("assets/s.svg",fit: BoxFit.scaleDown,),
                                  ),
                                ]),
                              ),


                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap:(){},
                                child: Stack(children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width / 2.5,
                                    height: 130,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20),
                                            topRight: Radius.circular(20)
                                            // bottomRight: Radius.circular(5)
                                            ),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey, blurRadius: 5.0)
                                        ],
                                        color: Color(0xffC9EAFD),),
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 10),
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text("Services Tracking",style: TextStyle(color: Colors.white,),),
                                      ),
                                    ),

                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 5.0
                                        )
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          topRight: Radius.circular(20)
                                          // bottomRight: Radius.circular(5)
                                          ),
                                    ),
                                    width: MediaQuery.of(context).size.width / 2.5,
                                    height: 100,
                                    child: SvgPicture.asset("assets/tracking-number (1).svg",fit: BoxFit.scaleDown,),

                                  ),
                                ]),
                              ),
                              InkWell(
                                onTap:(){},
                                child: Stack(children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width / 2.5,
                                    height: 130,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20),
                                            topRight: Radius.circular(20)
                                            // bottomRight: Radius.circular(5)
                                            ),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey, blurRadius: 5.0)
                                        ],
                                        color: Color(0xffC9EAFD),),
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 10),
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text("Tips",style: TextStyle(color: Colors.white,),),
                                      ),
                                    ),



                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(

                                          color: Colors.grey,
                                          blurRadius: 5.0
                                        )
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          topRight: Radius.circular(20)
                                          // bottomRight: Radius.circular(5)
                                          ),
                                    ),
                                    width: MediaQuery.of(context).size.width / 2.5,
                                    height: 100,
                                    child: SvgPicture.asset("assets/solution-icon.svg",fit: BoxFit.scaleDown,),
                                  ),
                                ]),
                              ),






                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
