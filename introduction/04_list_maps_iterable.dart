void main() {
 
  final numbers = [1,2,3,4,5,6,7,7,8,8]; 
  
  print('List original $numbers');
  print('Lenght ${numbers.length}');
  print('First ${numbers.first}');
  print('Last ${numbers.last}');
  print('Reversed: ${numbers.reversed}');
  
  
  final reversedNumbers = numbers.reversed; 
  print('Iterable: ${reversedNumbers}');
  print('Get to List original:${reversedNumbers.toList()}');
  print('Set list original:${reversedNumbers.toSet()}');
  
  final numbersGreaterThan5 = numbers.where((num){
    return num > 5;
  });
  
  print('number>5 iterable: $numbersGreaterThan5');
  print('number>5 iterable: ${numbersGreaterThan5.toSet()}');
  
  
}