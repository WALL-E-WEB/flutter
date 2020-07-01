import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 30.0,
      padding: EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
      child: Theme(
          data: ThemeData(
            primaryColor: Colors.redAccent,
            primaryColorDark: Color(0xffcccccc),
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
                hintText:'请输入',
                hintStyle:TextStyle(
                  fontSize: 12.0,
                  textBaseline:TextBaseline.alphabetic,
                  color: Color(0xffcccccc)
                ),
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
                fillColor: Colors.red,
                contentPadding: EdgeInsets.all(10.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(color: Colors.orange[50])),
                enabledBorder: OutlineInputBorder(
                  //未选中时候的颜色
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(
                    color: Color(0xffcccccc),
                  ),
                ),
              ),
              controller: TextEditingController())),
    ));
  }
}
