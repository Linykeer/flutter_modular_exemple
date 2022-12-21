import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('splash'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              // Navigator.pushNamed(context, '/categoria');
              Modular.to.pushNamed(
                '/categoria',
                arguments: 'Categoria Selecionada por Linykeer',
              );
            },
            child: const Text('Categoria Module'),
          ),
          TextButton(
            onPressed: () {
              // Navigator.pushNamed(context, '/categoria');
              Modular.to.pushNamed(
                '/produto',
                arguments: 'Produto Selecionada por Linykeer',
              );
            },
            child: const Text('Produto Module'),
          )
        ],
      )),
    );
  }
}
