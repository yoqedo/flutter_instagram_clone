import 'package:flutter/material.dart';
import 'package:instagram/model/comments_model.dart';
import 'package:instagram/model/posts_model.dart';

class PostedScreen extends StatefulWidget {
  final Post post;
  PostedScreen({this.post});

  @override
  _PostedScreenState createState() => _PostedScreenState();
}

class _PostedScreenState extends State<PostedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF0F6),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              //height: 400.0,
              margin: EdgeInsets.only(bottom: 15.0),
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                            ),
                            iconSize: 30.0,
                            color: Colors.black,
                            onPressed: () => Navigator.pop(context),
                          ),
                          SizedBox(width: 20.0),
                          Container(
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black45,
                                    blurRadius: 6.0,
                                    offset: Offset(0, 4),
                                  ),
                                ]),
                            child: CircleAvatar(
                              child: ClipOval(
                                child: Image.asset(
                                  widget.post.profImg,
                                  height: 50.0,
                                  width: 50.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                widget.post.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                widget.post.time,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Icon(Icons.more_horiz),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 300.0,
                      decoration: BoxDecoration(
                        //color: Colors.blue,
                        borderRadius: BorderRadius.circular(30.0),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 6.0,
                            color: Colors.black26,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset(
                          widget.post.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.favorite_border),
                              SizedBox(width: 10.0),
                              Text(
                                widget.post.likes,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 30.0),
                              Icon(Icons.chat_bubble_outline),
                              SizedBox(width: 10.0),
                              Text(
                                widget.post.comments,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.bookmark_border),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                //padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0)),
                ),
                child: ListView.builder(
                  itemCount: comments.length,
                  itemBuilder: (BuildContext context, int index) {
                    final comment = comments[index];
                    return Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black45,
                                    blurRadius: 6.0,
                                    offset: Offset(0, 4),
                                  ),
                                ]),
                            child: CircleAvatar(
                              child: ClipOval(
                                child: Image.asset(
                                  comment.imageUrl,
                                  height: 50.0,
                                  width: 50.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                comment.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                comment.text,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          height: 70.0,
          decoration: BoxDecoration(
            color: Color(0xFFEDF0F6),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0)),
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Add a Comment',
              contentPadding: EdgeInsets.all(20.0),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(color: Colors.grey),
              ),
              prefixIcon: Container(
                margin: EdgeInsets.all(4.0),
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 6.0,
                    offset: Offset(0, 4),
                  ),
                ]),
                child: CircleAvatar(
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/pose.jpg',
                      height: 50.0,
                      width: 50.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              suffixIcon: Container(
                margin: EdgeInsets.all(4.0),
                width: 70.0,
                child: FlatButton(
                  onPressed: () => print('send Comment'),
                  child: Icon(Icons.send,
                  color: Colors.green,
                  size: 30.0,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
