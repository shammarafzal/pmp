import 'package:flutter/material.dart';


class QuestionList extends StatelessWidget {
  const QuestionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Questions(questionNumber: 'Ques1', question: 'A prompt list is a predetermined list of:', ans1: 'A. Risks',ans2: 'B. Threats', ans3: 'C. Risk Categories', ans4: 'Opportunities');
  }
}



class Questions extends StatefulWidget {
  const Questions({Key? key, required this.questionNumber, required this.question, required this.ans1,required this.ans2, required this.ans3, required this.ans4}) : super(key: key);
  final questionNumber;
  final question;
  final ans1;
  final ans2;
  final ans3;
  final ans4;
  @override
  _QuestionsState createState() => _QuestionsState();
}
enum BestTutorSite { javatpoint, w3schools, tutorialandexample }
class _QuestionsState extends State<Questions> {
  BestTutorSite _site = BestTutorSite.javatpoint;
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text('${widget.questionNumber}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
          ),
          Text('${widget.question}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          _myRadioButton(
            title: "${widget.ans1}",
            value: 0,
            onChanged: (newValue) => setState(() => _groupValue = newValue),
          ),
          _myRadioButton(
            title: "${widget.ans2}",
            value: 0,
            onChanged: (newValue) => setState(() => _groupValue = newValue),
          ),
          _myRadioButton(
            title: "${widget.ans3}",
            value: 0,
            onChanged: (newValue) => setState(() => _groupValue = newValue),
          ),
          _myRadioButton(
            title: "${widget.ans4}",
            value: 0,
            onChanged: (newValue) => setState(() => _groupValue = newValue),
          ),
        ],
    );
  }
}
int _groupValue = -1;
Widget _myRadioButton({required String title, required int value, Function? onChanged}) {
  return RadioListTile(
    value: value,
    groupValue: _groupValue,
    onChanged: null,
    title: Text(title),
  );
}