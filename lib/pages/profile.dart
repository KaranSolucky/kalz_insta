import 'package:flutter/material.dart';
import 'package:kalz_studio/models/global.dart';
import 'package:kalz_studio/models/post.dart';

import 'contact.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              color: Colors.amber,
            ),
            Container(
              constraints: BoxConstraints.expand(
                  height: MediaQuery.of(context).size.height - 168),
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(20),
                    height: 250,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              height: 60,
                              width: 60,
                              child: CircleAvatar(
                                backgroundImage: user.profilePicture,
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin:
                                      EdgeInsets.only(left: 28, right: 20),
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            '9',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('posts')
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 20),
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            '1.5m',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('followers')
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 20),
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            '129',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('following')
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)),
                                        color: Colors.blue,
                                      ),
                                      margin: EdgeInsets.all(10),
                                      width: 120,
                                      height: 30,
                                      child: MaterialButton(
                                        child: Text(
                                          'Contact',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                                              builder: (context) => Contact()));

                                        },
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      height: 30,
                                      width: 120,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                          border: Border.all(
                                              width: 1,
                                              color: Color(0xFFE7E7E7))),
                                      child: MaterialButton(
                                        child: Text('Edit Profile'),
                                        onPressed: () {

                                        },
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  user.username,
                                  style: textStyleBold,
                                ),
                                Text("Believe in कर्म।🌀 \nCODER🖥️  \n& \nGAMER🎮"),
                              ],
                            ),
                            Container(
                            )
                          ],
                        )
                      ],
                    ),
                    color: Colors.white,
                  ),
                  Container(
                    height: 10,
                    color: Colors.black,
                  ),
                  Column(
                    children: getPosts(),
                  )
                ],
              ),
            )
          ],
        ));
  }

  List<Widget> getPosts() {
    List<Widget> postRows = [];
    List<Widget> posts = [];
    int counter = 0;
    for (Post post in userPosts) {
      double marginLeft = 2;
      if (counter == 3) {
        marginLeft = 0;
      } else if (counter == 0) {
        marginLeft = 0;
      }
      posts.add(getPost(post, marginLeft));
      if (counter == 2) {
        postRows.add(Container(
          child: Row(
            children: posts,
          ),
        ));
        posts = [];
        counter = 0;
      } else {
        counter++;
      }
    }
    if (posts.length > 0) {
      postRows.add(Container(
        child: Row(
          children: posts,
        ),
      ));
    }
    return postRows;
  }

  Widget getPost(Post post, double margin) {
    return Container(
      margin: EdgeInsets.only(left: margin, bottom: 2),
      height: 125,
      width: 123.5,
      decoration: BoxDecoration(
          image: DecorationImage(image: post.image, fit: BoxFit.fill)),
    );
  }


}
