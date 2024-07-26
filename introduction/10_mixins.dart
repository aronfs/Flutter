abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

abstract class Volador {
  void volar() => print('Volando');
}

abstract class Caminante {
  void caminar() => print('Caminando');
}

abstract class Nadador {
  void nadando() => print('Nadando');
}
/*
//Mamifero
class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Volador, Caminante {}

class Gato extends Mamifero with Caminante {}

//Ave
class Paloma extends Ave with Caminante, Volador {}

class Pato extends Ave with Caminante, Nadador, Volador {}

//Pescado
class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}
*/
void main() {
  //final flipper = Delfin();
  //lipper.nadando();
  
  //final batman = Murcielago();
  //batman.caminar();
  //batman.volar();
  
  //final namor = Pato();
  //namor.caminar();
  //namor.volar();
  //namor.nadar();
}
