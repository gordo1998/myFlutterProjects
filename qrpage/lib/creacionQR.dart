import 'package:flutter/material.dart';
import 'package:qrpage/Colores.dart';
import 'package:qrpage/identificacionQR.dart';


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

  int _currentIndex = 0;
    

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

  Widget footer(){
    return Container(
      decoration: BoxDecoration(
        color: colores.grisClaro,
      ),
      alignment: Alignment.bottomCenter,
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: Row(
        
      ),
    );
  }

  Widget navBar(){
    

    return BottomNavigationBar(
      backgroundColor: colores.grisOscuroDos,
      currentIndex: _currentIndex,
      onTap: (int newIndex) {
        setState(() {
          _currentIndex = newIndex;
          if (newIndex == 1){
            Navigator.push(context, MaterialPageRoute(builder: (context) => IdentificacionQR(title: "holi")));
          }
        });
      },
      items: const [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: "menu",
          icon: Icon(Icons.menu),
        ),
        BottomNavigationBarItem(
          label: "person",
          icon: Icon(Icons.person)
        )
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      backgroundColor: colores.negro,
      body: Center(
        child: Column(
          children: [
            //METERLO TODO EN OTRO COLUMN
            
            SizedBox(height: 50),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: colores.grisIntermedio
              ),
              width: 400,
              height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  textoCodigo(),
                  SizedBox(height: 10),
                  campoCodigo(),
                  SizedBox(height: 10),
                  botonCodigo(),
                  SizedBox(height: 30),
                  imagenQR(qr),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: navBar(),
    );
  }
}
