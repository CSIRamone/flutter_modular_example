import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_example_flutter/app/categoria/categoria_module.dart';

import 'package:modular_example_flutter/app/produto/produto_page.dart';

class ProdutoModule extends Module {

   @override
   List<Bind> get binds => [];

   @override
  List<Module> get imports => [
     CategoriaModule(),
  ];

   @override
   List<ModularRoute> get routes => [
      ChildRoute(Modular.initialRoute, child: (context, args) => ProdutoPage()),
   ];

}