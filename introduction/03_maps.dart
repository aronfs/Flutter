void main() {
  
  //This map String and Object List equal a JSON
  final Map<String, dynamic>pokemon = {
    'name': 'Charmander',
    'hp': 100,
    'isAlive': true,
    'abilities':<String>['impostor'],
    'sprites': {
      1: "charmander/image.png",
      2: "charmander/back.png"
    }
  };
  
  //JSON Mapper Normal 
  print(pokemon);
  print('Name: ${pokemon['sprites']}');
  print('Abilities: ${pokemon['abilities']}');
  //JSON Mappper in the subcategories
  print('Back: ${pokemon['sprites'][1]}');
  print('Front: ${pokemon['sprites'][2]}');
}
