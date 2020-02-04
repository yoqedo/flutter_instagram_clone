import 'package:flutter/material.dart';
import 'package:instagram/widgets/favorites_screen.dart';
import 'package:instagram/widgets/posts_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF0F6),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
              //color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Instagram',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'Billabong',
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.live_tv),
                        onPressed: () => print('IGTV'),
                      ),
                      IconButton(
                        icon: Icon(Icons.send),
                        onPressed: () => print('Send Message'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            FavoritesScreen(),
            PostsScreen(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        foregroundColor: Colors.black,
        backgroundColor: Colors.pink,
        mini: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
        ),
        elevation: 20.0,
        onPressed: () {
          print('FAB');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0)),
            color: Color(0xFFEDF0F6),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  print('menu');
                },
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  print('search');
                },
              ),
              IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {
                  print('favorite');
                },
              ),
              IconButton(
                icon: Icon(Icons.person_outline),
                onPressed: () {
                  print('person');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
