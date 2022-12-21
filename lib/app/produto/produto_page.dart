import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/categoria/model/preco_model.dart';

class ProdutoPage extends StatefulWidget {
  final String nome;
  const ProdutoPage({Key? key, required this.nome}) : super(key: key);

  @override
  State<ProdutoPage> createState() => _ProdutoPageState();
}

class _ProdutoPageState extends State<ProdutoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produto'),
      ),
      body: Column(
        children: [
          Text(widget.nome),
          TextButton(
            onPressed: () {
              var preco = Modular.get<PrecoModel>();
              print('${preco.hashCode}');
            },
            child: const Text('get preço'),
          )
        ],
      ),
    );
  }
}
