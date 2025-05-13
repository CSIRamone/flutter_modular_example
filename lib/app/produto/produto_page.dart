import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_example_flutter/app/categoria/model/preco_model.dart';

class ProdutoPage extends StatelessWidget {

  const ProdutoPage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Produto Page'),),
           body: Center(
             child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Produto Page'),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {
                     var preco = Modular.get<PrecoModel>();
                     print('${preco.hashCode}');
                    },
                    child: const Text('Get Preço'),
                  ),
                ],
             ),
           ),
       );
  }
}