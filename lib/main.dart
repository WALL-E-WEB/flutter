import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      builder: (context, Widget? widget) {
        return Directionality(
          textDirection: TextDirection.ltr,
          child: Overlay(
            initialEntries: [
              OverlayEntry(builder: (BuildContext _context) {
                MyLoading.instance.context = _context;
                return widget ?? Container();
              })
            ],
          ),
        );
      },
    );
  }
}

class MyLoading {
  static MyLoading? _instance; //唯一单例, _代表类私有,禁止外部直接访问
  factory MyLoading() => _getInstance(); //使用工厂构造方法，通过Test()获取类时，返回唯一实例
  static MyLoading get instance => _getInstance(); //通过静态变量instance获取实例

  static MyLoading _getInstance() {
    //这里真正生成唯一实例
    _instance ??= MyLoading._internal();
    return _instance!;
  }

  MyLoading._internal() {
    //命名构造函数
    //初始化
  }

  BuildContext? context;
  OverlayEntry? _overlayEntry;

  show() async {
    // [Permission.camera].request();

    _overlayEntry = OverlayEntry(
      opaque: false,
      builder: (BuildContext context) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Material(
                color: Colors.transparent,
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.blue,
                  constraints: const BoxConstraints(
                    maxHeight: 100,
                    maxWidth: 200,
                  ),
                  child: const Text(
                    '0000088ddd',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
    Overlay.of(_getInstance().context!)!.insert(_overlayEntry!);
  }

  remove() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  StreamController<ErrorAnimationType> errorController =
      StreamController<ErrorAnimationType>();
  TextEditingController textEditingController = TextEditingController();
  @override
  void initState() {
    super.initState();
    // errorController = StreamController<ErrorAnimationType>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),

            ElevatedButton(
                onPressed: () {
                  MyLoading.instance.show();
                },
                child: const Text('show')),
            ElevatedButton(
                onPressed: () {
                  MyLoading.instance.remove();
                },
                child: const Text('remove')),
            ElevatedButton(
                onPressed: () async {
                  permissionH(Permission.storage);
                },
                child: const Text('permission')),
            ElevatedButton(
                onPressed: () async {
                  openAppSettings();
                },
                child: const Text(' openAppSettings();')),
            //
            PinCodeTextField(
              length: 4,
              obscureText: false,
              keyboardType: TextInputType.number,
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 50,
                fieldWidth: 40,
                activeFillColor: Colors.white,
              ),
              animationDuration: const Duration(milliseconds: 300),
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              backgroundColor: Colors.blue.shade50,
              enableActiveFill: true,
              autovalidateMode: AutovalidateMode.always,
              errorAnimationController: errorController,
              controller: textEditingController,
              validator: (v) {
                // return '错误';
              },
              onCompleted: (v) {
                print("Completed");
                print(v);
              },
              onChanged: (value) {
                print(value);
                // setState(() {
                //   currentText = value;
                // });
              },
              beforeTextPaste: (text) {
                print("Allowing to paste $text");

                return true;
              },
              appContext: context,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

permissionH(Permission storage) async {
  // PermissionStatus status = await storage.status;
  PermissionStatus status = await storage.request();
  if (status.isGranted) {
    print('isGranted');
  } else if (status.isDenied) {
    print('isDenied1');
    var c = await storage.request();
    print(c);
    // permissionH(storage);
    print('isDenied2');
  } else if (status.isLimited) {
    print('isLimited');
  } else if (status.isRestricted) {
    print('isRestricted');
  } else if (status.isPermanentlyDenied) {
    print('isPermanentlyDenied1');
    await openAppSettings();
    permissionH(storage);
    print('isPermanentlyDenied2');
  }
}
