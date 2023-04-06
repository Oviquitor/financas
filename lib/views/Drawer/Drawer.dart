import 'package:fin/models/gerenciamentoPagina.dart';
import 'package:fin/views/Bancos/Banco.dart';
import 'package:fin/views/Categorias/Categoria.dart';
import 'package:fin/views/Despesas/Despesa.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuDrawer extends StatefulWidget {
  MenuDrawer({super.key});

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => GerenciamentoPagina(pageController),
      child: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Categoria(),
          Despesas(),
          Banco(),
        ],
      ),
    );
  }
}
