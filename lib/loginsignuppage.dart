
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginpage/finalpage.dart';
import 'package:loginpage/signuppage.dart';
import 'package:loginpage/slideleftroute.dart';
import 'package:loginpage/sliderout.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  child: Center(
                    child: Text(
                      'Hello',
                      style: GoogleFonts.sourceCodePro(fontSize: 50),
                    ),
                  ),
                  padding: EdgeInsets.only(top: 120, bottom: 22)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      Navigator.push(context, SliderRoute(page: SignupPage()));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.55,
                      width: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                          color: Colors.blue[700],
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          )),
                      child: Padding(
                        padding: EdgeInsets.only(right: 22, top: 28),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Text(
                                "Sign Up",
                                style: GoogleFonts.sourceCodePro(
                                    color: Colors.white,
                                    fontSize: 26,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8, bottom: 8),
                              child: Text(
                                "New Here?",
                                style: GoogleFonts.sourceCodePro(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18),
                              ),
                            ),
                            Text(
                              "Don't worry, just Sign Up to again access to the amazing app",
                              style: GoogleFonts.sourceCodePro(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 18),
                              textAlign: TextAlign.right,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.45,
                        width: MediaQuery.of(context).size.width*0.45,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20))),
                        child: Padding(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  child: Text(
                                    "Sign In",
                                    style: GoogleFonts.sourceCodePro(
                                        color: Colors.white,
                                        fontSize: 26,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  padding: EdgeInsets.only(bottom: 8,top: 27)),
                              Padding(
                                padding:  EdgeInsets.only(top: 8.0,bottom: 8),
                                child: Text(
                                  "Returning?",
                                  style: GoogleFonts.sourceCodePro(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(top: 8.0,right: 10),
                                child: Text("Just Sign in to resume what you where doing",textAlign: TextAlign.left,style: GoogleFonts.sourceCodePro(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white
                                ),),
                              )
                            ],
                          ),
                          padding: EdgeInsets.only(left: 22, right: 22),
                        ),
                      ),
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        Navigator.push(
                          context,
                          SlideLeftRoute(
                            page: LoginPageFinal(),
                          ),
                        );
                      }),
                ],
              ),
              Padding(
                padding:  EdgeInsets.only(top: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.only(right: 6),
                      child: Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey
                              )
                            ],
                            shape: BoxShape.circle
                        ),
                        child: Center(
                          child: FaIcon(
                            FontAwesomeIcons.google,
                            color: Colors.white,
                          ),

                        ),
                      ),),
                    Padding(padding: EdgeInsets.only(right: 6),
                      child: Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey
                              )
                            ],
                            shape: BoxShape.circle
                        ),
                        child: Center(
                          child: FaIcon(
                            FontAwesomeIcons.twitter,
                            color: Colors.white,
                          ),

                        ),
                      ),),
                    Padding(padding: EdgeInsets.only(right: 6),
                      child: Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                            color: Colors.indigo,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey
                              )
                            ],
                            shape: BoxShape.circle
                        ),
                        child: Center(
                          child: FaIcon(
                            FontAwesomeIcons.facebook,
                            color: Colors.white,
                          ),

                        ),
                      ),)

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
