import 'package:flutter/material.dart';


class CreacionQR extends StatefulWidget {
  const CreacionQR({super.key, required this.title});
  final String title;

  @override
  State<CreacionQR> createState() => _CreacionQR();
}

class _CreacionQR extends State<CreacionQR> {
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
      ),
      body: Center(
       
        child: Column(
         
          
        ),
      ),
    );
  }
}
