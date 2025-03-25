import 'package:flutter/material.dart';
import 'package:fluxo_livre/src/pages/home_page.dart';
import 'package:fluxo_livre/src/pages/login_page.dart';
import 'package:fluxo_livre/src/pages/tela_cadastro.dart';

class AppFluxolivre extends StatelessWidget {
  const AppFluxolivre({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppFluxoLivre',
      routes: {'/': (_) => LoginPage(), "/home": (_) => HomePage(), "/cadastro": (_) => TelaCadastro()},
    );
  }
}
