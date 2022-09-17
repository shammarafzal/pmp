import 'package:flutter/material.dart';
import 'package:pmp_project_simulator/Components/customButton.dart';
import 'package:pmp_project_simulator/question_model.dart';
import 'package:pmp_project_simulator/quiz.dart';
import 'package:pmp_project_simulator/result.dart';

import 'Settings/SizeConfig.dart';

class QuestionBottom extends StatefulWidget {
  const QuestionBottom({Key? key}) : super(key: key);

  @override
  _QuestionBottomState createState() => _QuestionBottomState();
}

class _QuestionBottomState extends State<QuestionBottom> {
  BestTutorSite _site = BestTutorSite.javatpoint;
  bool toggle = false;
  final _questions = const [
    {
      'questionText': 'Q1. Who created Flutter?',
      'answers': [
        {'text': 'Facebook', 'score': -2},
        {'text': 'Adobe', 'score': -2},
        {'text': 'Google', 'score': 10},
        {'text': 'Microsoft', 'score': -2},
      ],
    },
    {
      'questionText': 'Q2. What is Flutter?',
      'answers': [
        {'text': 'Android Development Kit', 'score': -2},
        {'text': 'IOS Development Kit', 'score': -2},
        {'text': 'Web Development Kit', 'score': -2},
        {
          'text':
          'SDK to build beautiful IOS, Android, ',
          'score': 10
        },
      ],
    },
    {
      'questionText': ' Q3. Which programing language is used by Flutter',
      'answers': [
        {'text': 'Ruby', 'score': -2},
        {'text': 'Dart', 'score': 10},
        {'text': 'C++', 'score': -2},
        {'text': 'Kotlin', 'score': -2},
      ],
    },
    {
      'questionText': 'Q4. Who created Dart programing language?',
      'answers': [
        {'text': 'Lars Bak and Kasper Lund', 'score': 10},
        {'text': 'Brendan Eich', 'score': -2},
        {'text': 'Bjarne Stroustrup', 'score': -2},
        {'text': 'Jeremy Ashkenas', 'score': -2},
      ],
    },
    {
      'questionText':
      'Q5. Is Flutter for Web and Desktop available in stable version?',
      'answers': [
        {
          'text': 'Yes',
          'score': -2,
        },
        {'text': 'No', 'score': 10},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }


  bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Questions'),
      ),
      body: ListView(
        children: [
          Container(
              height: 300,
              child:
              _questionIndex < _questions.length
                  ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              ) //Quiz
                  : Result(_totalScore, _resetQuiz),
              ),
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
                      _answerQuestion(1);
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
