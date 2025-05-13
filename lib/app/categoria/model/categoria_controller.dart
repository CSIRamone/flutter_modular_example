
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_example_flutter/app/categoria/model/preco_model.dart';

class CategoriaController extends Disposable {
  PrecoModel precoModel;
  CategoriaController({required this.precoModel}) {
    print('CategoriaController $hashCode');
  }
  
  @override
  void dispose() {
  
  }
}