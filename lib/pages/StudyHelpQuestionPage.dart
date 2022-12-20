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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                        child: Container(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'This is a question title',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      ),

                      Container(
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: Colors.grey.shade400))
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 8, right: 8, bottom: 8),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(right: 12),
                                child: Wrap(
                                  children: [
                                    Text(
                                      'Asked ',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey.shade600
                                      ),
                                    ),

                                    Text(
                                      'today',
                                      style: TextStyle(
                                          fontSize: 14
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.only(right: 12),
                                child: Wrap(
                                  children: [
                                    Text(
                                      'Viewd ',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey.shade600
                                      ),
                                    ),

                                    Text(
                                      '12 times',
                                      style: TextStyle(
                                          fontSize: 14
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 0,),
                                      child: IconButton(
                                        padding: EdgeInsets.zero,
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.arrow_drop_up_outlined,
                                          size: 62,
                                        ),
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 24),
                                    child: Text(
                                      '0',
                                      style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.grey.shade600
                                      )
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
          ],
        ),
      ),
    );
  }
}