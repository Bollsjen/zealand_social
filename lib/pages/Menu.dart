import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage();

  @override
  Widget build(BuildContext context){
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 243, 135, 1),
                  border: Border(bottom: BorderSide(color: Colors.black12))
                ),
                child: Stack(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            icon: Icon(
                                Icons.arrow_back
                            ),
                          ),
                        ),

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                            child: Text(
                              'Menu',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Icon(
                                  Icons.search
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 12, right: 12, top: 6),
                                child: Container(
                                  height: 30,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Search...'
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}