import 'package:energy_saving_application/SignIn_Up_pages/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../HomePage/homePage.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC9EAFD),
      body: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2.8,
          color: const Color(0xffC9EAFD),
          child: SvgPicture.asset("assets/login.svg"),
        ),
        Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5.0,
                  )
                ]),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.blue, blurRadius: 5.0)
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: SvgPicture.asset("assets/email.svg",fit: BoxFit.scaleDown,),

                              // contentPadding: EdgeInsets.only(left: 20),
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              hintText: "Email",
                              border: InputBorder.none),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.blue, blurRadius: 5.0)
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        child: TextField(
                          // keyboardType: TextInputType.number,

                          decoration: InputDecoration(
                              prefixIcon: SvgPicture.asset("assets/lock.svg",fit: BoxFit.scaleDown),
                              suffixIcon: SvgPicture.asset("assets/eye.svg",fit: BoxFit.scaleDown),
                              // contentPadding: EdgeInsets.only(left: 20),
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              hintText: "Password",
                              border: InputBorder.none),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forgot password",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 9,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: SizedBox(
                          width: 130,
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
                                return HomePage();
                              }));
                            },
                            child: const Text(
                              "Sign In",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          "OR",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              print("object");
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                  border: Border.all(color: Colors.grey)),
                              child: SvgPicture.asset("assets/g.svg",fit: BoxFit.scaleDown,),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              print("object");
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                  border: Border.all(color: Colors.grey)),
                              child:  SvgPicture.asset("assets/f.svg",fit: BoxFit.scaleDown),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              print("object");
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      const BorderRadius.all(Radius.circular(100)),
                                  border: Border.all(color: Colors.grey)),
                              child:  SvgPicture.asset("assets/a.svg",fit: BoxFit.scaleDown),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Dont have an Account?"),
                            InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                                  return SignUp();
                                }));
                              },
                              child: Text(
                                "Signup",
                                style: TextStyle(color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.topStart,
          child: Transform.translate(
              offset: const Offset(-210, -210),
              child: SvgPicture.asset(
                "assets/Group 5262.svg",
                height: 400,
                fit: BoxFit.cover,
              )),
        ),
      ]),
    );
  }
}
