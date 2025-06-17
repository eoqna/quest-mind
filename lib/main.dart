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
          title: Text('금호동3가'),
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w700,
          ),
          actions: [
            Icon(Icons.search),
            Icon(Icons.menu),
            Icon(Icons.notifications_none_outlined)
          ],
        ),
        body: Container(
          height: 150,
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('mac.png', width: 150),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('캐논 DSLR 100D (단렌즈, 충전기 16기가SD 포함'),
                    Text('성수동 행당동 ・ 끌올 10분 전'),
                    Text('210,000원'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.favorite_outline),
                        Text('4'),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        )
      )
    );
  }
}