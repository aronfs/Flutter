void main(){
  print('Inicio del programa');
  httpGet('https://SuperApiAARONSupremo').then((value){
    print(value);
  }).catchError((err) {
    print('Error: $err');
  });
  print('Fin del programa');
}

Future <String> httpGet(String url){
  return Future.delayed(const Duration(seconds: 4), (){
    throw 'Super ERROR en super peticion';
    //return 'Respuesta de la peticion simulada del JSON';
  });
}