void main() async {
  print('Inicio del programa');
  try{
  final value = await httpGet('https://SuperApiAARONSupremo');
 
  print('Exito!! $value');
  }on Exception catch(err){
   print('Fallo en la excepcion: $err'); 
  }
  catch(err){
    print('Tenemos un error: $err');
  } finally {
    print('Fin del Try and Catch');
  }
    
    
    print('Fin del programa');
}

Future <String> httpGet(String url) async{
  await Future.delayed(const Duration(seconds: 4));
  throw Exception('No hay params in he Url');
  //throw 'Error en la peticion';
  //return 'El Valor deveuelve un http response';
}