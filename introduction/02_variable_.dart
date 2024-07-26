void main () {
  
 final String pokemon = 'Charmander';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final sprites = <String>['Charmander', 'Ditto'];
  
 //tip date is dynamic is equal null 
  // dynamic == null
  dynamic errorMessage = 'holanda';
  errorMessage = 'Hello';
  errorMessage = true;
  errorMessage = [1,2,3,4,5,6];
  errorMessage = {1,2,3,4,5,6};
  errorMessage =  ()=> true;
  errorMessage = null;
  
  
  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
  """);
  
  
}