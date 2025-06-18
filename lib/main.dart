import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("instagram"),
          actions: [
            Icon(Icons.favorite_outline),
            Icon(Icons.send_outlined),
          ],
        ),
        body: BodyContainer(),
        bottomNavigationBar: AppBarContainer(),
      )
    );
  }
}

class BodyContainer extends StatelessWidget {
  const BodyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        PostItem(),
        PostItem(),
        PostItem(),
        PostItem(),
      ],
    );
  }
}

class PostItem extends StatelessWidget {
  const PostItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          AccountInfoInPost(),
          ImageContainerInPost(),
          ButtonItemInPost(),
          TextBoxInPost(),
        ],
      ),
    );
  }
}

class AccountInfoInPost extends StatelessWidget {
  const AccountInfoInPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.fromLTRB(10, 15, 10, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.account_circle_outlined),
              Text("tlseoqja")
            ],
          ),
          Icon(Icons.more_horiz),
        ],
      ),
    );
  }
}

class ImageContainerInPost extends StatelessWidget {
  const ImageContainerInPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.fromLTRB(0, 10, 0, 5),
      child: Image.asset(
        "instagram.png",
        width: double.infinity,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}


class ButtonItemInPost extends StatelessWidget {
  const ButtonItemInPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.fromLTRB(10, 5, 10, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 7,
            child: Row(
              children: [
                Icon(Icons.favorite_outline),
                Text("250"),
                Icon(Icons.message_outlined),
                Text("39"),
                Icon(Icons.send_outlined),
                Text("390"),
                Icon(Icons.refresh_outlined),
                Text("4"),
              ],
            ),
          ),
          Flexible(
            flex: 3,
            child: Icon(Icons.save)
          ),
        ],
      ),
    );
  }
}

class TextBoxInPost extends StatelessWidget {
  const TextBoxInPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.fromLTRB(10, 5, 10, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("tlseoqja", strutStyle: StrutStyle(fontWeight: FontWeight.bold)),
              Text("인스타그램 시작한다ㅋ"),
            ],
          ),
          Text("4시간 전")
        ],
      ),
    );
  }
}

class AppBarContainer extends StatelessWidget {
  const AppBarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.home),
          Icon(Icons.search),
          Icon(Icons.add_box_outlined),
          Icon(Icons.movie_creation_outlined),
          Icon(Icons.account_circle),
        ],
      ),
    );
  }
}
