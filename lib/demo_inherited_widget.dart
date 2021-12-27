import 'package:flutter/material.dart';
class DemoInheritedWidget extends StatefulWidget {

  @override
  _DemoInheritedWidgetState createState() => _DemoInheritedWidgetState();
}

class _DemoInheritedWidgetState extends State<DemoInheritedWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Inherited widget"),
      ),
      body: OngBa(),
    );
  }
}

class OngBa extends StatefulWidget {

  @override
  _OngBaState createState() => _OngBaState();
}

class _OngBaState extends State<OngBa> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Text Ong ba")
        ],
      ),
    );
  }
}

class MyInheritedWidget extends InheritedWidget{

  Widget child;

  MyInheritedWidget({required this.child}) : super(child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    throw UnimplementedError();
  }

}

