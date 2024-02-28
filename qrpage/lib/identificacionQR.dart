import 'package:flutter/material.dart';
import "package:qrpage/Colores.dart";

class IdentificacionQR extends StatefulWidget {
  const IdentificacionQR({super.key, required this.title});
  final String title;

  @override
  State<IdentificacionQR> createState() => _IdentificacionQR();
}

class _IdentificacionQR extends State<IdentificacionQR> {
  Colores colores = Colores();
  Widget botonGoogle(){
    return ElevatedButton(
      onPressed: (){
        
      }, 
      child: Image.asset("assets/google32.png")
    );
  }

  Widget textoTitulo(){
    return Text(
      "Crea tu Qr aquí",
      style: TextStyle(
        color: Colors.white
      ),
    );
  }

  Widget textoDesc(){
    return Text(
      "Te mandaremos un codigo a tu correo que deberás introducir para validarte",
      style: TextStyle(
        color: Colors.white
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      backgroundColor: colores.negro,
      body: Center( 
        child: Container(
          child: Column(
            children: [
              textoTitulo(),
              textoDesc(),
              botonGoogle(),
            ],        
          ),
        ),
      ),
    );
  }
}
