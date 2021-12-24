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

  String text = "hello";

  @override
  _OngBaState createState() => _OngBaState();
}

class _OngBaState extends State<OngBa> {
  @override
  Widget build(BuildContext context) {
    return Chame(widget.text);
  }
}

class Chame extends StatelessWidget {

  late String text;

  Chame(this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConTrai(text),
        ConGai(text)
      ],
    );
  }
}

class ConTrai extends StatelessWidget {

  late String text;

  ConTrai(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text),
    );
  }
}

class ConGai extends StatefulWidget {

  late String text;

  ConGai(this.text);

  @override
  _ConGaiState createState() => _ConGaiState();
}

class _ConGaiState extends State<ConGai> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(widget.text),
    );
  }
}




