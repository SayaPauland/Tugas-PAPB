import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Loadgambar extends StatefulWidget {
  const Loadgambar({super.key});

  @override
  State<Loadgambar> createState() => _LoadgambarState();
}

class _LoadgambarState extends State<Loadgambar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Latihan Load Image')),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            padding: EdgeInsets.all(3),
            child: CachedNetworkImage(
        imageUrl:
         "https://i1.wp.com/aiskrimpotong.com/wp-content/uploads/2021/10/QD5D-KIQ_400x400.jpg",
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error),
     ),
          )),
      )
    );
  }
}
