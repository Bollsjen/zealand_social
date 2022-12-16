import 'package:flutter/material.dart';
import 'package:zealand_social/components/MyAppBar.dart';
import 'package:zealand_social/pages/StudieHjaelpPage.dart';
import 'package:zealand_social/components/ActivityFeedPost.dart';

import 'package:zealand_social/components/HomeStudieCard.dart';

class HomePage extends StatelessWidget {

  HomePage();



  @override
  Widget build(BuildContext context) {
    void StudieHjealpPage(String studie){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => StudieHjaelpPage(category: studie)));
    }
    final List studier = [
      HomeStudieCard(title: 'Administrationsøkonom', width: 200, height: 150, imageUrl: 'https://www.zealand.dk/wp-content/uploads/2020/05/gitter-fuldtid-administrationsoekonom.png.pagespeed.ce.tWHp4Gmiwn.png', borderRadius: 20, color: Color.fromRGBO(0, 0, 0, 0.5), titleColor: Colors.white, coverHeight: 60, fontSize: 16, function: StudieHjealpPage),
      HomeStudieCard(title: 'Autoteknolog', width: 200, height: 150, imageUrl: 'https://www.zealand.dk/wp-content/uploads/2022/04/Autoteknolog_201130_ZEALAND_KØGE_04_DSC0338_LOW.jpg', borderRadius: 20, color: Color.fromRGBO(0, 0, 0, 0.5), titleColor: Colors.white, coverHeight: 60, fontSize: 18, function: StudieHjealpPage),
      HomeStudieCard(title: 'Datamatiker', width: 200, height: 150, imageUrl: 'https://www.zealand.dk/wp-content/uploads/2022/04/EASJ_Datamatiker_MJ_DSC8813-scaled.jpg.pagespeed.ce.ocfGyKuc4s.jpg', borderRadius: 20, color: Color.fromRGBO(0, 0, 0, 0.5), titleColor: Colors.white, coverHeight: 60, fontSize: 18, function: StudieHjealpPage),
      HomeStudieCard(title: 'Finansøkonom', width: 200, height: 150, imageUrl: 'https://www.zealand.dk/wp-content/uploads/2016/09/gitter-fuldtid-finansoekonom2.jpg.pagespeed.ce.n-kslOIC4z.jpg', borderRadius: 20, color: Color.fromRGBO(0, 0, 0, 0.5), titleColor: Colors.white, coverHeight: 60, fontSize: 18, function: StudieHjealpPage),
      HomeStudieCard(title: 'El-Installatør', width: 200, height: 150, imageUrl: 'https://www.zealand.dk/wp-content/uploads/2020/05/hero-elinstallatoer.jpg.pagespeed.ce.gCSlZGfze2.jpg', borderRadius: 20, color: Color.fromRGBO(0, 0, 0, 0.5), titleColor: Colors.white, coverHeight: 60, fontSize: 18, function: StudieHjealpPage),
      HomeStudieCard(title: 'Handelsøkonom', width: 200, height: 150, imageUrl: 'https://www.zealand.dk/wp-content/uploads/2020/09/hero-sutransport.jpg.pagespeed.ce.mILdd7wNlQ.jpg', borderRadius: 20, color: Color.fromRGBO(0, 0, 0, 0.5), titleColor: Colors.white, coverHeight: 60, fontSize: 18, function: StudieHjealpPage),
      HomeStudieCard(title: 'Markedsføringsøkonom', width: 200, height: 150, imageUrl: 'https://www.zealand.dk/wp-content/uploads/2019/11/Zealand-markedsføringsøkonom-Slagelse.jpg', borderRadius: 20, color: Color.fromRGBO(0, 0, 0, 0.5), titleColor: Colors.white, coverHeight: 60, fontSize: 18, function: StudieHjealpPage),
      HomeStudieCard(title: 'Multimediedesigner', width: 200, height: 150, imageUrl: 'https://www.zealand.dk/wp-content/uploads/2020/05/gitter-fuldtid-multimediedesigner2.jpg.pagespeed.ce.tmtMjWuG4o.jpg', borderRadius: 20, color: Color.fromRGBO(0, 0, 0, 0.5), titleColor: Colors.white, coverHeight: 60, fontSize: 18, function: StudieHjealpPage),
    ];

    return SafeArea(
      child: Scaffold(
          body: Column(
              children: [
                MyAppBar(),

                Expanded(child: SingleChildScrollView(
                  child: Wrap(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                        child: Text(
                          'Study help',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(0),
                        child: Container(
                          width: double.infinity,
                          height: 150,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: studier.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return studier[index];
                            },
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 8, right: 8, top: 32, bottom: 12),
                        child: Text(
                          'Events',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                        child: Container(
                          width: double.infinity,
                          height: 275,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image(
                              image:  NetworkImage('https://scontent-cph2-1.xx.fbcdn.net/v/t39.30808-6/315089760_830547934984726_5662237302271399198_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=340051&_nc_ohc=JQrWzCgfATgAX8AW1kW&_nc_ht=scontent-cph2-1.xx&oh=00_AfDbcB-jR2EX4Z-TTHKHfsIASC-nWh6xPq7bkNrlL9xWLg&oe=639FB969'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 8, right: 8, top: 32, bottom: 8),
                        child: Text(
                          'Activity',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Container(
                          child: Column(
                            children: [
                              ActivityFeedPost(),
                              ActivityFeedPost(),
                              ActivityFeedPost(),
                              ActivityFeedPost()
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ),
              ]
          ),
      ),
    );
  }
}