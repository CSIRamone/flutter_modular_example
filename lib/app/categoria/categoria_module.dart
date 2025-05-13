import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_example_flutter/app/categoria/categoria_page.dart';
import 'package:modular_example_flutter/app/categoria/model/categoria_controller.dart';
import 'package:modular_example_flutter/app/categoria/model/preco_model.dart';
import 'package:modular_example_flutter/app/categoria/model/x.dart';

class CategoriaModule extends Module {
  @override
  List<Bind> get binds => [
       // Bind((i) => CategoriaController(), isLazy: true, isSingleton: true),
       Bind.lazySingleton((i) => X(), export: true),
       Bind.lazySingleton((i) => PrecoModel(x: i()), export: true),
       Bind.lazySingleton((i) => CategoriaController(precoModel: i())), 
        //Bind.factory((i) => CategoriaController()),
        //Bind.singleton((i) => CategoriaController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => CategoriaPage(categoria: args.data),
        ),
      ];
}
