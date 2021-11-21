import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Components/customButton.dart';
import 'Settings/SizeConfig.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/logo-app.png',
                    ),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('We are Project Management House', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.blueAccent),textAlign: TextAlign.center,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('A training organization provides a group of different project management training courses that help you to:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.blueAccent),textAlign: TextAlign.left,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:   RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: 'Learn ', style: new TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'and understand project management and associated tools in a simple way.'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:   RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: 'Pass ', style: new TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'the exams provided by PMI, as you will solve hundredsof questions similar to PMI exams.'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:   RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: 'Apply ', style: new TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'what you have learned on your projects, in a professional and efficient ways to gurantee the success of your projects.'),
                  ],
                ),
              ),
            ),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: IconButton(
                      // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                        icon: FaIcon(FontAwesomeIcons.internetExplorer, size: 60, color: Colors.blue,),
                        onPressed: () { print("Pressed"); }
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: IconButton(
                      // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                        icon: FaIcon(FontAwesomeIcons.facebook, size: 60, color: Colors.blue,),
                        onPressed: () { print("Pressed"); }
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: IconButton(
                      // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                        icon: FaIcon(FontAwesomeIcons.linkedin, size: 60, color: Colors.blue,),
                        onPressed: () { print("Pressed"); }
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: IconButton(
                      // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                        icon: FaIcon(FontAwesomeIcons.twitter, size: 60, color: Colors.blue,),
                        onPressed: () { print("Pressed"); }
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: IconButton(
                      // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                        icon: FaIcon(FontAwesomeIcons.youtube, size: 60, color: Colors.red,),
                        onPressed: () { print("Pressed"); }
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Container(
                      width: SizeConfig.screenWidth / 4,
                      height: 50,
                      child: CustomButton(title: 'Free Version', onPress: (){

                      },),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Container(
                      width: SizeConfig.screenWidth / 4,
                      height: 50,
                      child: CustomButton(title: 'Full Version', onPress: (){
                        // Navigator.of(context).pushReplacementNamed('proof_work');
                      },),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:   RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: '• ', style: new TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    TextSpan(text: 'Detailed explanation for the reason of choosing the best answer.'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:   RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: '• ', style: new TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    TextSpan(text: 'Reference for each question from PMBok 6th edition.'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:   RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: '• ', style: new TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    TextSpan(text: 'The interface looks like an actual PMP Exam provides by PMI.'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:   RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: '• ', style: new TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    TextSpan(text: 'Knoeledge area (Available in Full Version).'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:   RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: '• ', style: new TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    TextSpan(text: 'Real timed two PMP practice exams in 4 hours (Available in Full Version).'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:   RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: '• ', style: new TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    TextSpan(text: 'No Ads display (Available in Full Version)..'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:   RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: '• ', style: new TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    TextSpan(text: 'The pass score for any quiz is 70%'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Container(
                width: SizeConfig.screenWidth / 4,
                height: 50,
                child: CustomButton(title: 'Subscribe', onPress: (){
                  // Navigator.of(context).pushReplacementNamed('proof_work');
                },),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:   RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: 'Subscribe ', style: new TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    TextSpan(text: 'to our newsletter to enjoy free coupons, useful articles and to know about our new products and offers.'),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
