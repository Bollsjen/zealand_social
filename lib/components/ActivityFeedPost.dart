import 'package:flutter/material.dart';

class ActivityFeedPost extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Padding(
        padding: EdgeInsets.only(top: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Icon(
                            Icons.person,
                            size: 30,
                          ),
                        ),

                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 6),
                              child: Text(
                                  'Magnus Jensen',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16
                                  )
                              ),
                            ),
                          ),
                        ),

                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.symmetric(),
                            child: Text(
                              '5 min ago',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey.shade600
                              )
                            ),
                          ),
                        )
                      ],
                    )
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  'This is the text for this post'
                ),
              ),

              Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  border: Border(top: BorderSide(color: Colors.grey.shade400))
                              ),
                              child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero
                                    ),
                                    onPressed: () {},
                                    child: Container(
                                      child: Wrap(
                                        children: [
                                          Icon(
                                            Icons.thumb_up,
                                            color: Colors.grey.shade500,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                                            child: Text(
                                                'Like ' + '12',
                                                style: TextStyle(
                                                    color: Colors.grey.shade800
                                                )
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                          )
                        ),

                        Expanded(
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  border: Border(top: BorderSide(color: Colors.grey.shade400))
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 4),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero
                                  ),
                                  onPressed: () {},
                                  child: Container(
                                    child: Wrap(
                                      children: [
                                        Icon(
                                          Icons.comment,
                                          color: Colors.grey.shade500,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                                          child: Text(
                                              'Comments ' + '5',
                                              style: TextStyle(
                                                  color: Colors.grey.shade800
                                              )
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                        ),

                        Expanded(
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  border: Border(top: BorderSide(color: Colors.grey.shade400))
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 4),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero
                                  ),
                                  onPressed: () {},
                                  child: Container(
                                    child: Wrap(
                                      children: [
                                        Icon(
                                          Icons.share,
                                          color: Colors.grey.shade500,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                                          child: Text(
                                              'Share ' + '5',
                                            style: TextStyle(
                                              color: Colors.grey.shade800
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}