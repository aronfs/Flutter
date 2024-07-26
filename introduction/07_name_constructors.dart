void main(){
 
  final Map<String, dynamic> rawJSON = {
    'name': 'Spiderman',
    'power': 'trepar paredes',
    'isAlive': false
  };
  final spiderman = Hero.fromJSON(rawJSON);
  print(spiderman.toString());
}

class Hero {
  
  String name ;
  String power ;
  bool isAlive;
  
  Hero({ 
    required this.name,
    required this.power,
    required this.isAlive
    });
  
  Hero.fromJSON(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No isAlive found';
  
  @override
  String toString() {
    // TODO: implement toString
    return '$name, $power, is Alive: ${isAlive ? 'YES!':'NO ALIVE!!'}';
  }
}




