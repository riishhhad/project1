import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/Bloc/movie_bloc.dart';
import 'package:project1/Repository/ModelClass/MovieModel.dart';
import 'package:project1/Ui/screen2.dart';

class Screen1 extends StatefulWidget {

  const Screen1({super.key,});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {



  @override
  void initState() {
    BlocProvider.of<MovieBloc>(context).add(FetchMovieEvent());
    // TODO: implement initState
    super.initState();
  }

  late MovieModel result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.white,
              leading: Icon(
                Icons.list,
              ),
              title: Center(child: Text('FilmKu')),
              actions: [Icon(Icons.notification_add)],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 10),
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
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10, top: 10),
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
                )
              ],
            ),
            BlocBuilder<MovieBloc, MovieState>(
              builder: (context, state) {
                if (state is MovieblocLoading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state is MovieblocError) {
                  return Center(
                    child: Text("Error"),
                  );
                }
                if (state is MovieblocLoaded) {
                  result = BlocProvider.of<MovieBloc>(context).animeModel;
                  return SizedBox(
                    height: 310,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: result.movies!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => screen2(
                                      img: result.movies![index].posterPath
                                          .toString(),
                                      titile: result.movies![index].title
                                          .toString(),
                                      discrption: result.movies![index].overview
                                          .toString(),
                                      genies: result.movies![index].genres!,
                                    )));
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 8),
                                  child: SizedBox(
                                      width: 150,
                                      child: Image.network(result
                                          .movies![index].posterPath
                                          .toString())),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 15),
                                  child: SizedBox(
                                    width: 150,
                                    child: Text(
                                      result.movies![index].title.toString(),
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
                                      padding: EdgeInsets.only(left: 25),
                                      child: SizedBox(
                                          width: 20,
                                          height: 10,
                                          child: Image.asset('assets/s.png')),
                                    ),
                                    SizedBox(
                                      width: 100,
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
                  );
                } else {
                  return SizedBox();
                }
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
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
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
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
              ],
            ),
            SizedBox(
              height: 330,
              width: 320,
              child: BlocBuilder<MovieBloc, MovieState>(
  builder: (context, state) {
    if (state is MovieblocLoading) {
    return Center(
    child: CircularProgressIndicator(),
    );
    }
    if (state is MovieblocError) {
    return Center(
    child: Text("Error"),
    );
    }
    if (state is MovieblocLoaded) {
    result = BlocProvider.of<MovieBloc>(context).animeModel;
    return ListView.separated(
                scrollDirection: Axis.vertical,
                itemCount: result.movies!.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector( onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => screen2(
                          img: result.movies![index].backdropPath
                              .toString(),
                          titile: result.movies![index].title
                              .toString(),
                          discrption: result.movies![index].overview
                              .toString(),
                          genies: result.movies![index].genres!,
                        )));
                  },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 4),
                            child: Container(width: 120,height: 150,
                              child: Image.network(fit: BoxFit.cover,result.movies![index].backdropPath.toString()
                                ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10, top: 10),
                                child: Text(
                                   result.movies![index].originalTitle.toString(),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.28,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 5, top: 5),
                                    child: SizedBox(
                                        width: 15,
                                        child: Image.asset('assets/s.png')),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 5, top: 5),
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
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5, left: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 61,
                                      height: 18,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 4),
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFDBE3FF),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                    ),
                                    Container(
                                      width: 61,
                                      height: 18,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 4),
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFDBE3FF),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                    ),
                                    Container(
                                      width: 61,
                                      height: 18,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 4),
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFDBE3FF),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5, top: 5),
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
                            ],
                          ),
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
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 20,
                  );
                },
              );}
    else{return SizedBox();}
  },
),
            )
          ],
        ),
      ),
    );
  }
}
