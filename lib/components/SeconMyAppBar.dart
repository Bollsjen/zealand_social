import 'package:flutter/material.dart';
import 'package:zealand_social/pages/Menu.dart';

class SecondMyAppBar extends StatelessWidget {

  final title;

  const SecondMyAppBar(
  {
    super.key,
    required this.title
  });


  @override
  Widget build(BuildContext context) {
    return Container(
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
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
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
              ),

              Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                      child: Text(
                        title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22
                        ),
                      ),
                    ),
                  )
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
    );
  }
}