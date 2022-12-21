import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/categoria/model/categoria_controller.dart';

class CategoraPage extends StatefulWidget {
  final String? categoria;
  const CategoraPage({Key? key, this.categoria}) : super(key: key);

  @override
  State<CategoraPage> createState() => _CategoraPageState();
}

class _CategoraPageState extends State<CategoraPage> {
  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<CategoriaController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categorias'),
      ),
      body: Column(
        children: [
          Center(
            child: Text(widget.categoria ?? 'Não foi enviado a categoria'),
          ),
          TextButton(
              onPressed: () {
                controller.precoModel;
              },
              child: const Text('Get Controller'))
        ],
      ),
    );
  }
}
