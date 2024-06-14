import 'package:flutter/material.dart';

class screen2 extends StatefulWidget {
  final String img;
  final String titile;
  final String discrption;


  final List  genies;



  const screen2({super.key,required this.img,required this.titile,required this.discrption,required this.genies});

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  List img1 = ['assets/7.png','assets/8.png','assets/9.png','assets/10.png'];



  List text1 = ['Tom Holland', 'Zendaya', 'Benedict\nCumberbatch', 'Jacon\nBatalon',];

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,body: SingleChildScrollView(
      child: Column(children: [
        SizedBox(width: 400,height:250,child: Image.network(widget.img)),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
              widget.titile,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.40,
                ),
              ),
            ),Padding(
              padding:  EdgeInsets.only(right: 20),
              child: Icon(Icons.bookmark_border),
            ),
          ],
        ),Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 20,top: 10),
              child: SizedBox(width: 20,child: Image.asset('assets/s.png')),
            ),Padding(
              padding:  EdgeInsets.only(left: 5,top: 10),
              child: Text(
                '9.1/10 IMDb',
                style: TextStyle(
                  color: Color(0xFF9B9B9B),
                  fontSize: 12,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.24,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 20,top: 20),
          child:
          SizedBox(height: 40,
            child: ListView.separated(itemCount: widget.genies.length,scrollDirection: Axis.horizontal,itemBuilder: (BuildContext context, int index) {
              return
                Container(
                  width: 56,
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
                      SizedBox(width: 32,height: 50,
                        child: Text(
                         widget.genies[index],
                          style: TextStyle(
                            color: Color(0xFF87A3E8),
                            fontSize: 8,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w700,
                            height: 0,
                            letterSpacing: 0.16,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
            }, separatorBuilder: (BuildContext context, int index) { return SizedBox(width: 10,); },),
          )
        ),Padding(
          padding:  EdgeInsets.only(left: 20,top: 15),
          child: Row(children: [
            Text(
              'Length',
              style: TextStyle(
                color: Color(0xFF9B9B9B),
                fontSize: 12,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w400,
                letterSpacing: 0.24,
              ),
            ),Padding(
              padding:  EdgeInsets.only(left: 30),
              child: SizedBox(width: 30,),
            ) ,
            Text(
              'Language',
              style: TextStyle(
                color: Color(0xFF9B9B9B),
                fontSize: 12,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w400,
                letterSpacing: 0.24,
              ),
            ),Padding(
              padding:  EdgeInsets.only(left: 20),
              child: SizedBox(width: 30,),
            ),
            Text(
              'Rating',
              style: TextStyle(
                color: Color(0xFF9B9B9B),
                fontSize: 12,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w400,
                letterSpacing: 0.24,
              ),
            )
          ],),
        ),Row(children: [
          Padding(
            padding:  EdgeInsets.only(left: 20,top: 15),
            child: Text(
              '2h 28min',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w600,
                height: 0,
                letterSpacing: 0.24,
              ),
            ),
          ),SizedBox(width: 20,),
          Padding(
            padding: EdgeInsets.only(left: 30,top: 15),
            child: Text(
              'English',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w600,
                letterSpacing: 0.24,
              ),
            ),
          ),Padding(
            padding:  EdgeInsets.only(left: 60,top: 15),
            child: Text(
              'PG-13',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w600,
                height: 0,
                letterSpacing: 0.24,
              ),
            ),
          ),
        ],),Row(children: [
          Padding(
            padding:  EdgeInsets.only(left: 20,top: 15),
            child: Text(
              'Description',
              style: TextStyle(
                color: Color(0xFF110E47),
                fontSize: 22,
                fontFamily: 'Merriweather',
                fontWeight: FontWeight.w900,
                height: 0,
                letterSpacing: 0.32,
              ),
            ),
          ),
        ],),SizedBox(
          width: 327,
          child: Padding(
            padding:  EdgeInsets.only(top: 15),
            child: Text(
              widget.discrption,
            style: TextStyle(
            color: Color(0xFF9B9B9B),
            fontSize: 12,
            fontFamily: 'Mulish',
            fontWeight: FontWeight.w400,
            letterSpacing: 0.24,
                  ),
                ),
          ),
      ),Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Padding(
            padding:  EdgeInsets.only(left: 20,top: 15),
            child: Text(
              'Cast',
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
            padding:  EdgeInsets.only(right: 15,top: 15),
            child: Container(
                width: 61,
                height: 21,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFE5E4EA)),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
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
      
                  ],
                ),
              ),
          ),
        ],),SizedBox(
          height: 170,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return
                Container(margin: EdgeInsets.only(bottom: 10),child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: 8),
                      child: SizedBox(width: 100,child: Image.asset(img1[index])),
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
      
      
                  ],
                ),
                  width: 100,
                  height: 50,
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
        ),
      ],),
    ),
    );
  }
}
