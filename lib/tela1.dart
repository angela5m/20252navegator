import 'package:flutter/material.dart';
import 'package:navegartelas/tela2.dart';

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 117, 6, 43),
      ),
        body: Center(
          child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return Tela2();
            }));
          },
           child: Text("Nova Pagina")),
        ),
      );
  }
}