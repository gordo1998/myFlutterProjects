import 'package:flutter/material.dart';
import 'package:qrpage/Colores.dart';


class CreacionQR extends StatefulWidget {
  CreacionQR();
  //final String title;

  @override
  State<CreacionQR> createState() => _CreacionQR();
}

class _CreacionQR extends State<CreacionQR> {
  Colores colores = Colores();
  final myController = TextEditingController();
  bool qr = false;

  Widget textoCodigo(){
    return Text(
      "Introduzca el codigo aquí",
      style: TextStyle(
        color: colores.blancoUno
      ),
    );
  }

  Widget campoCodigo(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Container(
        color: colores.grisClaro,
        child: TextField(
          controller: myController,
          showCursor: false,
          decoration: InputDecoration(
            border: InputBorder.none,
            focusColor: colores.grisClaro,
          ),
          style: TextStyle(
            color: colores.grisOscuroDos
          ),
        ),
      ),
    );
  }

  Widget botonCodigo(){
    return ElevatedButton(
      onPressed: (){
        setState(() {
          qr = true;
        });
        
 
      }, 
      child: Text("Insertar")
    );
  }

  Widget imagenQR(boolqr){
    if (boolqr){
      return ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset("assets/images/qr.png")
        );
    }else {
      return Container(
        decoration: BoxDecoration(
          color: colores.grisOscuroDos,
          borderRadius: BorderRadius.circular(15),
        ),
        width: 225,
        height: 225,
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colores.negro,
      body: Center(
        child: Column(
          children: [
            textoCodigo(),
            campoCodigo(),
            botonCodigo(),
            imagenQR(qr),
          ],
        ),
      ),
    );
  }
}
