import 'package:flutter/material.dart';
import 'package:zealand_social/pages/Menu.dart';

class MyAppBar extends StatelessWidget {

  MyAppBar();


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromRGBO(255, 243, 135, 1),
          border: Border(bottom: BorderSide(color: Colors.black12))
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Stack(
          children: [
            Row(

              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Zealand Social',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w900
                      ),
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute (builder: (context) => MenuPage()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.menu,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}