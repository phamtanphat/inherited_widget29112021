import 'package:flutter/material.dart';
class DemoContext extends StatefulWidget {
  @override
  _DemoContextState createState() => _DemoContextState();
}

class _DemoContextState extends State<DemoContext> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo build context"),
      ),
      body: Container(
        child: Center(
          child: OngBa(),
        ),
      ),
    );
  }
}

class OngBa extends StatefulWidget {

  // String text = "OngBa";
  //
  // static OngBa getData(BuildContext context){
  //   return context.findAncestorWidgetOfExactType()!!;
  // }

  static _OngBaState of(BuildContext context){
    return context.findAncestorStateOfType()!;
  }


  @override
  _OngBaState createState() => _OngBaState();
}

class _OngBaState extends State<OngBa> {

  String text = "abc";

  @override
  Widget build(BuildContext context) {
    return Chame();
  }
}

class Chame extends StatelessWidget {

  String text = "Chame";

  static Chame of(BuildContext context){
    return context.findAncestorWidgetOfExactType()!;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConTrai(),
        ConGai()
      ],
    );
  }
}

class ConTrai extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    _OngBaState ongBa = OngBa.of(context);
    return Container(
      child: Text(ongBa.text),
    );
  }
}

class ConGai extends StatefulWidget {


  @override
  _ConGaiState createState() => _ConGaiState();
}

class _ConGaiState extends State<ConGai> {
  @override
  Widget build(BuildContext context) {
    Chame chame = Chame.of(context);
    return Container(
      child: Text(chame.text),
    );
  }
}




