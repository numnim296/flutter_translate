import 'package:flutter/material.dart';
// import '../models/translate.dart';

// class ListTranslate extends StatefulWidget {
//   ListTranslate({Key key}) : super(key: key);

//   @override
//   _ListTranslateState createState() => _ListTranslateState();
// }

// class _ListTranslateState extends State<ListTranslate> {
//   Widget _displayCard(int index) {
//     return Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.all(Radius.circular(0.0)),
//       ),
//       margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 0.5),
//       child: Container(
//         height: 80.0,
//         padding: EdgeInsets.only(left: 16.0, top: 16.0, bottom: 16.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             Flexible(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: <Widget>[
//                   Text(
//                     "hello world",
//                     style: TextStyle(
//                       fontWeight: FontWeight.w600,
//                     ),
//                     maxLines: 1,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                   Text(
//                     "hello world2",
//                     style: TextStyle(
//                       fontWeight: FontWeight.w400,
//                     ),
//                     maxLines: 1,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: ListView.builder(
//         itemBuilder: (BuildContext ctxt, int index) {
//           return _displayCard(index);
//         },
//       ),
//     );
//   }
// }

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Album> fetchAlbum(String textData) async {
  print("ooooooooooooooooooooooooooooooo"+textData);
  var response = await http.get(
      'https://translation.googleapis.com/language/translate/v2?key=AIzaSyCl0JfWdDiBZO30bbgfaGcJ5ys4gX_zqZI&q=' +
          textData +
          '&target=th&source=en');
  // await http.get('https://jsonplaceholder.typicode.com/albums/1');

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
    return Album(textTran: json['data']['translations'][0]['translatedText']);
  }
}

class ListTranslate extends StatefulWidget {
  ListTranslate({Key key, this.title}) : super(key: key);
  String title;
  @override
  _ListTranslateState createState() => _ListTranslateState();
}

class _ListTranslateState extends State<ListTranslate> {
  Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum(widget.title);
    
  }
  
 
  
  

  @override
  Widget build(BuildContext context) {
    print('kkkkkkkkkkkkkkkkkkk');
    print(futureAlbum);
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(0.0)),
      ),
      margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 0.5),
      child: Container(
        height: 80.0,
        padding: EdgeInsets.only(left: 16.0, top: 16.0, bottom: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  // Text(
                  //   widget.title,
                  //   style: TextStyle(
                  //     fontWeight: FontWeight.w600,
                  //   ),
                  //   maxLines: 5,
                  //   overflow: TextOverflow.ellipsis,
                  // ),
                 
                  FutureBuilder<Album>(
                    future: futureAlbum,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {

                        return Text(
                          snapshot.data.textTran,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                        );
                      } else if (snapshot.hasError) {
                        return Text("${snapshot.error}");
                      }

                      // By default, show a loading spinner.
                      return CircularProgressIndicator();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
