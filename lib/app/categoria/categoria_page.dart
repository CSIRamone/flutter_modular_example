import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_example_flutter/app/categoria/model/categoria_controller.dart';

class CategoriaPage extends StatefulWidget {
  final String? categoria;
  const CategoriaPage({Key? key, this.categoria}): 
  //categoria = Modular.args?.data,
  super(key: key);

  @override
  State<CategoriaPage> createState() => _CategoriaPageState();
}

class _CategoriaPageState extends ModularState<CategoriaPage, CategoriaController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categoria Page'),
      ),
      body: Center(
        //child: Text(Modular.args?.data ?? 'Nao enviada nenhuma mensagem'),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.categoria ?? 'Nenhuma categoria foi enviada'),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                var controller = Modular.get<CategoriaController>();
              },
              child: const Text('Get Controller'),
            ),
          ],
        ),
      ),
    );
  }
}
