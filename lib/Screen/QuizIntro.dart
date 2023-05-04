import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class QuizIntro extends StatelessWidget {
  const QuizIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Quiz Intro")),
      body: Container(
        padding: EdgeInsets.only(bottom: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
