import 'package:flutter/material.dart';

import 'package:qrpage/Colores.dart';



class Navbar extends StatefulWidget {
  const Navbar({super.key, required this.title});
  final String title;

  @override
  State<Navbar> createState() => _Navbar();
}

class _Navbar extends State<Navbar> {
  Colores colores = Colores();
  
  
  
  @override
  Widget build(BuildContext context) {
 
    return FooterView(
      backgroundColor: colores.negro,
      body: Center( 
        child: Column(
          children: [
      
          ],        
        ),
      ),
    );
  }
}