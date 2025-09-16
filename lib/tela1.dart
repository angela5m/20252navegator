import 'package:flutter/material.dart';
import 'package:navegartelas/tela2.dart';

class Tela1 extends StatefulWidget {
  const Tela1({super.key});

  @override
  State<Tela1> createState() => _Tela1State();
}

class _Tela1State extends State<Tela1> {
  final _controllerNome = TextEditingController();
  final _controllerEmail = TextEditingController();
  final _controllerTelefone = TextEditingController();

  @override
  void dispose() {
    _controllerNome.dispose();
    _controllerEmail.dispose();
    _controllerTelefone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double formWidth = 350;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cadastro",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 59, 15, 30),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: formWidth,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: Offset(0, 2),
                )
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Ícone de cadastro no topo
                Icon(
                  Icons.person_add,
                  size: 100,
                  color: const Color.fromARGB(255, 59, 15, 30),
                ),
                SizedBox(height: 20),

                TextField(
                  controller: _controllerNome,
                  decoration: InputDecoration(
                    labelText: "Nome",
                    hintText: "Digite seu nome",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    isDense: true,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                  ),
                ),
                SizedBox(height: 15),

                TextField(
                  controller: _controllerEmail,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "E-mail",
                    hintText: "Digite seu e-mail",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    isDense: true,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                  ),
                ),
                SizedBox(height: 15),

                TextField(
                  controller: _controllerTelefone,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: "Telefone",
                    hintText: "Digite seu telefone",
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    isDense: true,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                  ),
                ),
                SizedBox(height: 25),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Nome: ${_controllerNome.text}");
                      print("E-mail: ${_controllerEmail.text}");
                      print("Telefone: ${_controllerTelefone.text}");

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Tela2(
                            nome: _controllerNome.text,
                            email: _controllerEmail.text,
                            telefone: _controllerTelefone.text,
                          ),
                        ),
                      );
                    },
                    child: Text(
                      "Enviar",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 59, 15, 30),
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
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
    );
  }
}
