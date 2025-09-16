import 'package:flutter/material.dart';
import 'package:navegartelas/widgets.dart'; // ajuste o caminho conforme seu projeto

class Tela2 extends StatelessWidget {
  final String nome;
  final String email;
  final String telefone;

  const Tela2({
    super.key,
    required this.nome,
    required this.email,
    required this.telefone,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dados Cadastrados",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor:const Color.fromARGB(255, 59, 15, 30),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Widgets(title: "Nome", content: nome),
            SizedBox(height: 15),
            Widgets(title: "E-mail", content: email),
            SizedBox(height: 15),
            Widgets(title: "Telefone", content: telefone),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  "Retornar",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor:const Color.fromARGB(255, 59, 15, 30),
                  padding: EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
