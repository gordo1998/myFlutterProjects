import 'package:flutter/material.dart';


class IdentificacionQR extends StatefulWidget {
  const IdentificacionQR({super.key, required this.title});
  final String title;

  @override
  State<IdentificacionQR> createState() => _IdentificacionQR();
}

class _IdentificacionQR extends State<IdentificacionQR> {
  
  Widget botonGoogle(){
    return ElevatedButton(
      onPressed: (){

      }, 
      child: Image.asset("assets/google32.png")
    );
  }
  
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      body: Center( 
        child: Container(
          color: Colors.black,
          child: Column(

            children: [
              Text("Crea tu Qr aquí"),
              Text("Te mandaremos un codigo a tu correo que deberás introducir para validarte."),
              botonGoogle(),
            ],        
          ),
        ),
      ),
    );
  }
}
