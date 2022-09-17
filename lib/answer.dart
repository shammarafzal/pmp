import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';

class Answer extends StatefulWidget {
  final VoidCallback selectHandler;
  final answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  State<Answer> createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  String? _singleValue = "Text alignment right";
  @override
  Widget build(BuildContext context) {
    return RadioButton<String?>(
      description: widget.answerText,
      value: widget.answerText,
      groupValue: _singleValue,
      onChanged: (value) => setState(
            () => _singleValue = value as String?,
      ),
      activeColor: Colors.red,
    );
    // return Container(
    //   width: double.infinity,
    //   child: TextButton.icon(
    //     icon: toggle ? Icon(Icons.circle_outlined) : Icon(Icons.circle_outlined),
    //     label: Text(answerText),
    //     onPressed: selectHandler,
    //   ), //RaisedButton
    // ); //Container
  }
}
