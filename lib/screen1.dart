import 'package:flutter/material.dart';
import 'package:project1/screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  List img1= ['assets/1.png','assets/2.png','assets/3.png'];
  List img2 = ['assets/4.png','assets/5.png'];

  List text1 = ['Spiderman: No Way\nHome','Eternals', 'Shang-Chi'];
  List text2 = [ 'Venom Let There\nBe Carnage','The King’s Man'];






  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,body: SingleChildScrollView(
      child: Column(children: [
        AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.list,
        ),
        title: Center(child: Text('FilmKu')),
        actions: [Icon(Icons.notification_add)],
      ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Padding(
            padding:  EdgeInsets.only(left: 10,top: 10),
            child: Text(
              'Now Showing',
              style: TextStyle(
                color: Color(0xFF110E46),
                fontSize: 16,
                fontFamily: 'Merriweather',
                fontWeight: FontWeight.w900,
                letterSpacing: 0.32,
              ),
            ),
          ),Padding(
            padding:  EdgeInsets.only(right: 10,top: 10),
            child: Text(
              'See more',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xFFAAA8B0),
                fontSize: 10,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w400,
                letterSpacing: 0.20,
              ),
            ),
          )],),
        SizedBox(
          height: 310,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return
                GestureDetector(onTap:  () {Navigator.of(context).push(MaterialPageRoute(builder: (_)=>screen2()));},
                  child: Container(margin: EdgeInsets.only(bottom: 10),child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(top: 8),
                        child: SizedBox(width: 150,child: Image.asset(img1[index])),
                      ),Padding(
                        padding:  EdgeInsets.only(top: 15),
                        child: SizedBox(
                          width: 150,
                          child: Text(
                            text1[index],
                            style: TextStyle(
                              color: Color(0xFF212529),
                              fontSize: 15,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                  
                      Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 25),
                            child: SizedBox(width: 20,height: 10,child: Image.asset('assets/s.png')),
                          ),SizedBox(width: 100,
                            child: Text(
                              '9.1/10 IMDb',
                              style: TextStyle(
                                color: Color(0xFF212529),
                                fontSize: 14,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                    width: 200,
                    height: 200,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF9FAFB),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x28000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                  ),
                );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: 20,
              );
            },
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Padding(
            padding:  EdgeInsets.only(left: 10),
            child: Text(
              'Popular',
              style: TextStyle(
                color: Color(0xFF110E47),
                fontSize: 16,
                fontFamily: 'Merriweather',
                fontWeight: FontWeight.w900,
                height: 0,
                letterSpacing: 0.32,
              ),
            ),
          ),Padding(
            padding:  EdgeInsets.only(right: 10),
            child: Text(
                'See more',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFFAAA8B0),
                  fontSize: 10,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w400,
                  height: 0,
                  letterSpacing: 0.20,
                ),
              ),
          ),

        ],),SizedBox(
          height: 330,width: 320,
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
              return
                Container(margin: EdgeInsets.only(bottom: 10),child: Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: 8),
                      child: SizedBox(width: 95,child: Image.asset(img2[index])),
                    ),Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                      Padding(
                        padding:  EdgeInsets.only(left: 10,top: 10),
                        child: Text(
                          text2[index],
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.28,
                          ),
                        ),
                      ), Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 5,top: 5),
                            child: SizedBox(width: 15,child: Image.asset('assets/s.png')),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: 5,top:5),
                            child: Text(
                              '6.4/10 IMDb',
                              style: TextStyle(
                                color: Color(0xFF9B9B9B),
                                fontSize: 12,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w400,
                                height: 0,
                                letterSpacing: 0.24,
                              ),
                            ),
                          ),
                        ],
                      ),Padding(
                        padding: EdgeInsets.only(top: 5,left: 5),
                        child: Row(
                          children: [
                            Container(
                              width: 61,
                              height: 18,
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                              decoration: ShapeDecoration(
                                color: Color(0xFFDBE3FF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'HORROR',
                                    style: TextStyle(
                                      color: Color(0xFF87A3E8),
                                      fontSize: 8,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.16,
                                    ),
                                  ),
                                ],
                              ),
                            ),Container(
                              width: 61,
                              height: 18,
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                              decoration: ShapeDecoration(
                                color: Color(0xFFDBE3FF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'MYSTERY',
                                    style: TextStyle(
                                      color: Color(0xFF87A3E8),
                                      fontSize: 8,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                      letterSpacing: 0.16,
                                    ),
                                  ),
                                ],
                              ),
                            ),Container(
                              width: 61,
                              height: 18,
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                              decoration: ShapeDecoration(
                                color: Color(0xFFDBE3FF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'THRILLER',
                                    style: TextStyle(
                                      color: Color(0xFF87A3E8),
                                      fontSize: 8,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                      letterSpacing: 0.16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),Padding(
                        padding:  EdgeInsets.only(left: 5,top: 5),
                        child: Text(
                          '1h 47m',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.24,
                          ),
                        ),
                      )
                    ],),

                  ],
                ),
                  width: 150,
                  height: 150,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF9FAFB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x28000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: 20,
              );
            },
          ),
        )
      ],),
    ),);
  }
}
