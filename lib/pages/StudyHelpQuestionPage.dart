import 'package:flutter/material.dart';
import 'package:zealand_social/components/SeconMyAppBar.dart';

class StudyHelpQuestionPage extends StatelessWidget {

  final id;

  const StudyHelpQuestionPage(
  {
    super.key,
    required this.id
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SecondMyAppBar(title: 'Question'),

            Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(),
                            child: Text(
                                'This is a question',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold
                                )
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
            )
          ],
        ),
      ),
    );
  }
}