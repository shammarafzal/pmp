import 'package:flutter/material.dart';
import 'package:pmp_project_simulator/Components/customButton.dart';
import 'package:pmp_project_simulator/question_model.dart';

import 'Settings/SizeConfig.dart';

class QuestionBottom extends StatefulWidget {
  const QuestionBottom({Key? key}) : super(key: key);

  @override
  _QuestionBottomState createState() => _QuestionBottomState();
}

class _QuestionBottomState extends State<QuestionBottom> {
  bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Questios'),
      ),
      body: ListView(
        children: [
          Container(
              height: 300,
              child: QuestionList()),
          CheckboxListTile(
            title: Text("Review Question Later", style: TextStyle(fontWeight: FontWeight.bold),),
            value: checkedValue,
            onChanged: (newValue) {
              setState(() {
                checkedValue = true;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
          ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: CustomButton(title: 'Show Correct Answer', onPress: (){}),
              ),
          Container(
            width: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Container(
                    width: SizeConfig.screenWidth / 2.5,
                    height: 50,
                    child: CustomButton(title: 'Previous', onPress: (){

                    },),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Container(
                    width: SizeConfig.screenWidth / 2.5,
                    height: 50,
                    child: CustomButton(title: 'Next', onPress: (){
                      // Navigator.of(context).pushReplacementNamed('proof_work');
                    },),
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
                    width: SizeConfig.screenWidth / 2.5,
                    height: 50,
                    child: CustomButton(title: 'Review Question', onPress: (){

                    },),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Container(
                    width: SizeConfig.screenWidth / 2.5,
                    height: 50,
                    child: CustomButton(title: 'Submit', onPress: (){
                      // Navigator.of(context).pushReplacementNamed('proof_work');
                    },),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
