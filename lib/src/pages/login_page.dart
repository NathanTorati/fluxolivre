import 'package:flutter/material.dart';
import 'package:fluxo_livre/src/pages/tela_cadastro.dart';
import 'package:fluxo_livre/src/widgets/input_login_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(16),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/img_fundologin.png'),
            fit: BoxFit.cover,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 200,
                width: 200,
                child: Image(image: AssetImage('assets/images/et.png')),
              ),
              InputLoginWidget(
                icon: Icons.person_outline,
                hint: 'Usuário',
                obscure: false,
              ),
              InputLoginWidget(
                  icon: Icons.lock_outline, hint: 'Password', obscure: true),
              SizedBox(height: 20),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFAFAE24),
                      minimumSize: Size(double.infinity, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14))),
                  onPressed: () {},
                  child: const Text(
                    'Acessar',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(
                          0xFF031C5F,
                        )),
                  )),
              SizedBox(height: 20),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFAFAE24),
                      minimumSize: Size(double.infinity, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14))),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => CadastroScreen()),
                    );
                  },
                  child: const Text(
                    'Criar Conta',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(
                          0xFF031C5F,
                        )),
                  ))
            ],
          )),
    );
  }
}
