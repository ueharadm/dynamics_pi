import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dynamics_pi/controllers/question_controller.dart';

import 'components/body.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();

}

class _QuizScreenState extends State<QuizScreen>{
  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return SingleChildScrollView(
      child: SizedBox(
        height: 850,
        child: Scaffold(
          extendBodyBehindAppBar: false,
          appBar: AppBar(
            // Fluttter show the back button automatically
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: [
              FlatButton(onPressed: _controller.nextQuestion, child: Text("Skip")),
            ],
          ),
          body: Body(),
        ),
      ),
    );
  }
}
