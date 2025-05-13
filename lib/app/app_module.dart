
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_example_flutter/app/categoria/categoria_module.dart';
import 'package:modular_example_flutter/app/produto/produto_module.dart';
import 'package:modular_example_flutter/app/splash/splash_page.dart';

class AppModule extends Module {
  
  //dependencies
  @override 
  List<Bind<Object>> get binds => [];

  //routes
  @override
  List<ModularRoute> get routes => [
    ChildRoute(Modular.initialRoute, child: (context, args) => SplashPage()),
    ModuleRoute('/categoria', module: CategoriaModule()),
    ModuleRoute('/produto', module: ProdutoModule()),
  ];

}