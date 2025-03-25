import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CadastroScreen(),
    );
  }
}

class CadastroScreen extends StatefulWidget {
  @override
  _CadastroScreenState createState() => _CadastroScreenState();
}

class _CadastroScreenState extends State<CadastroScreen> {
  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  final _cpfController = TextEditingController();
  final _senhaController = TextEditingController();
  final _confirmarSenhaController = TextEditingController();

  void _cadastrar() {
    // Lógica para cadastro (validação, envio de dados, etc.)
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }

  void _cancelar() {
    // Lógica para retornar para a tela de Login
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela de Cadastro"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextField(
              controller: _nomeController,
              decoration: InputDecoration(labelText: "Nome"),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: "E-mail"),
              keyboardType: TextInputType.emailAddress,
            ),
            TextField(
              controller: _cpfController,
              decoration: InputDecoration(labelText: "CPF"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _senhaController,
              decoration: InputDecoration(labelText: "Senha"),
              obscureText: true,
            ),
            TextField(
              controller: _confirmarSenhaController,
              decoration: InputDecoration(labelText: "Confirmar Senha"),
              obscureText: true,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: _cadastrar,
                  child: Text("Cadastrar"),
                ),
                ElevatedButton(
                  onPressed: _cancelar,
                  child: Text("Cancelar"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Home"),
      ),
      body: Center(
        child: Text("Bem-vindo à Tela Home!"),
      ),
    );
  }
}
