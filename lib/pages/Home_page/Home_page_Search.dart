import 'package:flutter/material.dart';

class HomeSearch extends StatefulWidget {
  @override
  _HomeSearchState createState() => _HomeSearchState();
}

class _HomeSearchState extends State<HomeSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 70, 0, 0),
      height: 30.0,
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
      child: Theme(
          data: ThemeData(
            primaryColor: Colors.white,
          ),
          child: TextField(
              onChanged: (text) {
                print(text);
              },
              onSubmitted: (text) {
                print(text);
              },
              cursorRadius: Radius.circular(5.0),
              textAlign: TextAlign.left,
              style: TextStyle(color: Color(0xffcccccc), fontSize: 12.0),
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: '请输入',
                hintStyle: TextStyle(
                    fontSize: 12.0,
                    textBaseline: TextBaseline.alphabetic,
                    color: Color(0xffcccccc)),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Color(0xffcccccc),
                  size: 18.0,
                ),
                suffixIcon: Icon(
                  Icons.aspect_ratio,
                  color: Color(0xffcccccc),
                  size: 18.0,
                ),
                prefixIconConstraints: BoxConstraints(
                  minHeight: 32,
                  minWidth: 32,
                ),
                contentPadding: EdgeInsets.all(10.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(color: Colors.white)),
                enabledBorder: OutlineInputBorder(
                  //未选中时候的颜色
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
              controller: TextEditingController())),
    );
  }
}
