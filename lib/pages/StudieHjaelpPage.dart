import 'package:flutter/material.dart';
import 'package:zealand_social/components/QuestionCard.dart';
import 'package:zealand_social/components/SeconMyAppBar.dart';
import 'package:zealand_social/components/StudieFilterChip.dart';
import 'package:zealand_social/pages/Menu.dart';

class StudieHjaelpPage extends StatefulWidget {

  String category;

  StudieHjaelpPage(
      {
        super.key,
        required this.category
      });

  @override
  State<StudieHjaelpPage> createState() => _StudieHjaelpPageState();
}

class _StudieHjaelpPageState extends State<StudieHjaelpPage> {
  final itemKey = GlobalKey();

  Future scrollToItem() async {
    final context = itemKey.currentContext!;

    await Scrollable.ensureVisible(context, alignment: 0.5, duration: Duration(milliseconds: 500));
  }

  final List uddannelsesList = ["All","Administrationsøkonom", "Autoteknolog", "Datamatiker", "Finansøkonom", "El-Installatør", "Handelsøkonom", "Markedsføringsøkonom", "Multimediedesigner"];

  void UpdateFilter(String index){
    setState(() {
      widget.category = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SecondMyAppBar(title: 'Study help',),

              Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: ClipRRect(
                            child: Image(
                              height: 135,
                              width: double.infinity,
                              image: NetworkImage('https://www.zealand.dk/wp-content/uploads/2022/02/Zealand_Dec21__00225_LOW.jpg.pagespeed.ce.zctssCE1Q9.jpg'),
                              fit: BoxFit.cover,
                              alignment: Alignment.bottomCenter,
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 8, right: 8, top: 16, bottom: 8),
                          child: Text(
                            'Top questions for ' + widget.category,
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: TextButton(
                            onPressed: () {
                              //TODO stil et spørgsmål
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue[400],
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 12),
                                child: Center(
                                  child:Text(
                                    'Ask Question',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        Container(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 12),
                            child: Wrap(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                                  child: Text(
                                    'Filter',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black
                                    ),
                                  ),
                                ),

                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: uddannelsesList.map((e) => e == widget.category ? Container(key: itemKey, child: StudieFilterChip(title: e, function: UpdateFilter, enabled: true)) : StudieFilterChip(title: e, function: UpdateFilter, enabled: false)).toList(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade800),
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: Stack(
                                children: [
                                  Row(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 6),
                                          child: Icon(
                                            Icons.search,
                                            color: Colors.grey.shade700,
                                          ),
                                        ),
                                      ),

                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            height: 37,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: 'Search...'
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
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 8, right: 8, top: 32),
                          child: Text(
                            'Questions',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 4),
                            child: Container(
                              child: Expanded(
                                child: Column(
                                  children: [
                                    QuestionCard(id: 0,),
                                    QuestionCard(id: 1,),
                                    QuestionCard(id: 2,),
                                    QuestionCard(id: 3,),
                                    QuestionCard(id: 4,),
                                  ],
                                ),
                              ),
                            ),
                        ),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        )
    );

    @override
    void initState(){
      scrollToItem();
    }
  }
}