void main() {
  final windPlant = WindPLant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  print('wind: ${charPhone(windPlant)}');
  print('nuclear: ${charPhone(nuclearPlant)}');
}

double charPhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }

  return plant.energyLeft - 10;
}

enum PlantType {
  //Describe Types
  nuclear,
  wind,
  water
}

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});
  //Mis Firmas
  void consumeEnergy(double amount);
}

//extends o implements
class WindPLant extends EnergyPlant {
  WindPLant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

class NuclearPlant implements EnergyPlant {
  
  @override
  double energyLeft;
  
  @override
  final PlantType type = PlantType.nuclear;
  
  NuclearPlant({ required this.energyLeft});
  
   @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}