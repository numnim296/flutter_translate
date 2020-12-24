import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'choose-language.dart';
import 'translate-text.dart';
import ' recommend.dart';

Future<Album> fetchAlbum() async {
  final response =
      // await http.get('https://translation.googleapis.com/language/translate/v2?key=AIzaSyCl0JfWdDiBZO30bbgfaGcJ5ys4gX_zqZI&q=how&target=th&source=en');
      await http.get('https://jsonplaceholder.typicode.com/albums/1');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load Album');
  }
}

class Album {
  final String textTran;

  Album({this.textTran});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      textTran: json['data']['translations'][0]['translatedText']
    );
  }
}

// void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Translate')),
        ),
        // body: Center(
        //   child: FutureBuilder<Album>(
        //     future: futureAlbum,
        //     builder: (context, snapshot) {
        //       if (snapshot.hasData) {
        //         // return Text(snapshot.data.title);
        //         return Text(snapshot.data.textTran);
        //       } else if (snapshot.hasError) {
        //         return Text("${snapshot.error}");
        //       }

        //       // By default, show a loading spinner.
        //       return CircularProgressIndicator();
        //     },
        //   ),
        // ),
        body: SingleChildScrollView(
          child: Column(
          children: <Widget>[
            ChooseLanguage(),
            Container(
              margin: EdgeInsets.only(bottom: 8.0),
              child: TranslateText(),
            ),
             Container(
              margin: EdgeInsets.only(bottom: 8.0),
            ),
            // ListTranslate(),
            ListRecommend()
          
          
          ]
          ),
        ),
      ),
    );
  }
}
