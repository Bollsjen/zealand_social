import 'package:flutter/material.dart';
import 'package:zealand_social/pages/StudyHelpQuestionPage.dart';

class QuestionCard extends StatelessWidget {

  final id;

  const QuestionCard(
  {
    super.key,
    required this.id
  });

  @override
  Widget build(BuildContext context){
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero
      ),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute (builder: (context) => StudyHelpQuestionPage(id: id,)));
      },
      child: Padding(
        padding: EdgeInsets.only(top: 8),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Container(
                        child: Text(
                          'This is a title',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue[500]
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 4),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue[200]
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(4),
                                child: Text(
                                  'PHP',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontSize: 12
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(right: 4),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue[200]
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(4),
                                child: Text(
                                  'SQL',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontSize: 12
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(right: 4),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue[200]
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(4),
                                child: Text(
                                  'HTML',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontSize: 12
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 4),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 6),
                            child: Text(
                              'Votes: 4',
                              style: TextStyle(
                                  fontSize: 12
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(right: 6),
                            child: Text(
                              'Answers: 2',
                              style: TextStyle(
                                  fontSize: 12
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(right: 6),
                            child: Text(
                              'Views: 12',
                              style: TextStyle(
                                  fontSize: 12
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(top: 6),
                        child: Wrap(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 4),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(4),
                                child: Image(
                                  height: 20,
                                  image: NetworkImage('https://www.gravatar.com/avatar/7f582791bc217379415cc2bc54abc718?s=256&d=identicon&r=PG&f=1'),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(right: 4, top: 2),
                              child: Text(
                                'Bollsjen',
                                style: TextStyle(
                                    color: Colors.blue[500]
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(right: 4, top: 4),
                              child: Text(
                                'asnwered 75',
                                style: TextStyle(
                                    fontSize: 12
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text(
                                '5 min ago',
                                style: TextStyle(
                                    fontSize: 12
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}