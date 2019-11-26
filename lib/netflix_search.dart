import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NetflixSearch extends StatefulWidget {
  @override
  _NetflixSearchState createState() => _NetflixSearchState();
}

class _NetflixSearchState extends State<NetflixSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff221f1f),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.2,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.2,
                width: MediaQuery.of(context).size.width,
                child: Image(image: AssetImage('images/netflix7.jpg')),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.2,
                decoration: BoxDecoration(
                    color: Colors.black,
                    gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        colors: [
                          Color(0xff221f1f).withOpacity(0.0),
                          Color(0xff221f1f)
                        ])),
              ),
//              Positioned(
//                left: 30.0,
//                top: 50.0,
//                child: Container(
//                  height: 50.0,
//                  width: 50.0,
//                  child: Image.asset('images/Netflix_logo.png'),
//                ),
//              ),
//              Positioned(
//                left: MediaQuery.of(context).size.width / 4,
//                top: MediaQuery.of(context).size.height / 11,
//                child: Text(
//                  'Series',
//                  style: TextStyle(color: Colors.white, fontSize: 15),
//                ),
//              ),
//              Positioned(
//                left: MediaQuery.of(context).size.width / 2,
//                top: MediaQuery.of(context).size.height / 11,
//                child: Text(
//                  'Films',
//                  style: TextStyle(color: Colors.white, fontSize: 15),
//                ),
//              ),
//              Positioned(
//                left: MediaQuery.of(context).size.width / 1.3,
//                top: MediaQuery.of(context).size.height / 11,
//                child: Text(
//                  'My List',
//                  style: TextStyle(color: Colors.white, fontSize: 15),
//                ),
//              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 9,
                right: MediaQuery.of(context).size.width / 5,
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          Text(
                            'My List',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 7,
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.play_arrow,
                              color: Colors.black,
                            ),
                            Text('Play'),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 7,
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.info,
                              color: Colors.white,
                            ),
                            Text(
                              'info',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 5,
                left: 15,
                child: Text(
                  "Previews",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 4,
                //   right: MediaQuery.of(context).size.width / 7,
                child: Container(
                  height: MediaQuery.of(context).size.height / 1.5,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('images/netflix$index.jpg'),
                            ),
                          ),
                          SizedBox(
                            width: 60,
                          )
                        ],
                      );
                    },
                    itemCount: 10,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 1.5,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Row(
                        children: <Widget>[
                          DecoratedBox(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15)),
                            child: Card(
                              child: Image.asset(
                                  'images/netflix${(index + 3) % 10}.jpg'),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      );
                    },
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 2.2,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Row(
                        children: <Widget>[
                          DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Card(
                              child: Image.asset(
                                  'images/netflix${(index + 6) % 10}.jpg'),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      );
                    },
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
