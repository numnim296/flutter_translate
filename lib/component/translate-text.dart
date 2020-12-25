import 'package:flutter/material.dart';
import 'package:translate/component/list-translate.dart';

class TranslateText extends StatefulWidget {
  TranslateText({Key key}) : super(key: key);

  @override
  _TranslateTextState createState() => _TranslateTextState();
}

class _TranslateTextState extends State<TranslateText> {
  final textTranController = TextEditingController();
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Card(
            color: Colors.white,
            margin: EdgeInsets.all(0.0),
            elevation: 2.0,
            child: Column(
              children: [
                Container(
                  height: 150.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                          child: Padding(
                        padding:
                            EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                        child: TextField(
                          controller: textTranController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'กรอกข้อความ'),
                        ),
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          OutlineButton(
            onPressed: () => {
              // ListTranslate(title:textTranController.text)
              setState(() {
                pressed = true;
              })
            },
            textColor: Colors.pink,
            borderSide: BorderSide(
                color: Colors.pink, width: 1.0, style: BorderStyle.solid),
            child: Text(
              'แปล',
            ),
          ),
          pressed ? ListTranslate(title: textTranController.text) : Text("")
        ],
      ),
    );
  }
}
