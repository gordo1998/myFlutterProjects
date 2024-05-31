import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Gmail extends StatefulWidget{
  
  @override
  State<Gmail> createState() => _Gmail();
}

class _Gmail extends State<Gmail> {

  TextEditingController _controller = TextEditingController();
  bool _messageSend = false;

  changeVariableMessage(){
    setState(() {
      _messageSend = true;
    });
  }

  Widget seeMessage(){
    switch (_messageSend) {
      case true:
        return Text(_controller.text.toString());
      case false:
        return SizedBox.shrink();
    }
  }

  Widget bodyCorreo(){
    return Center(
      child: Column(
        children: <Widget>[
          TextField(
            controller: _controller,
          ),
          seeMessage(),
        ],
      ),
    );
  }

  Widget navBar(BuildContext context) {
    return FloatingActionButton(
        onPressed: (){
          changeVariableMessage();
        },
        child: Icon(Icons.send)
      );
  }


  Widget mainBuilder(BuildContext context){
    return Scaffold(
      body: bodyCorreo(),
      bottomNavigationBar: navBar(context),
    );
  }

  @override
  Widget build (BuildContext context) {
    return mainBuilder(context);
  }
}
