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

  String text = "abc";

  void setText(String text){
    setState(() {
      this.text = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    Map<String,dynamic> data = {"string" : text , "function" : setText};
    return Container(
      child: Column(
        children: [
          Text(text),
          MyInheritedWidget(
              data: data,
              child: Concai()
          )
        ],
      ),
    );
  }
}

class MyInheritedWidget extends InheritedWidget{

  Map<String,dynamic> data;

  Widget child;

  MyInheritedWidget({required this.child,required this.data}) : super(child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    throw UnimplementedError();
  }

}

class Concai extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: (){

        },
        child: Text("Change text"),
      ),
    );
  }
}


