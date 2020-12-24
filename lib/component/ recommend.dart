import 'package:flutter/material.dart';

class ListRecommend extends StatefulWidget {
  @override
  _ListRecommendState createState() => _ListRecommendState();
}

class _ListRecommendState extends State<ListRecommend> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Card(
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
                      Text(
                        "hello",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        "สวัสดี",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        Card(
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
                      Text(
                        "pet",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        "สัตว์เลี้ยง",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        Card(
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
                      Text(
                        "dog",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        "หมา",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        Card(
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
                      Text(
                        "cat",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        "แมว",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )

        ,
        Card(
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
                      Text(
                        "hello",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        "สวัสดี",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )


      ],
    ));
  }
}
