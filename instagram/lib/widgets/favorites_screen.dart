import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram/model/favorites_model.dart';

class FavoritesScreen extends StatefulWidget {
  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      width: double.infinity,
      //color: Colors.deepOrange,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          final categorie = categories[index];
          return Container(
            margin: EdgeInsets.only(right: 20.0),
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  blurRadius: 6.0,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: CircleAvatar(
              child: ClipOval(
                child: Image(
                  height: 60.0,
                  width: 60.0,
                  image: AssetImage(categorie.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
