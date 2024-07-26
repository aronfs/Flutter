void main(){
 final spiderman = new Hero(name: 'Superman',power:  'Volar');
  print(spiderman.toString());
  print(spiderman.name);
  print(spiderman.power);
  
}

class Hero {
  String name ;
  String power ;
  
  Hero({ 
    required this.name,
    this.power = "none"
    });
  /*
  Hero(String pName, String pPower)
    : name = pName,
      power = pPower;
  */
  /*
  Hero(String pName, String pPower){
    this.name = pName;
    this.power = pPower;
  }*/

  @override
  String toString() {
    // TODO: implement toString
    return '$name - $power';
  }

}
