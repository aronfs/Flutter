void main(){
  
  final square = Square(side: 10);
  
  square.side = -6;
  
  print('Result: ${square.area}');
  
  
}

class Square {
  
  double _side;
  
  Square({required double side})
    : assert(side >= 0, 'side must be >= 0'),
  _side = side;
  
  //Definition Getter and Setter
  double get area {
    return _side * _side;
  }
  
  set side( double value){
    print('setting new value, $value');
    if (value < 0) throw 'Value must >= 0';
    _side = value;
  }
  
  
  double calculatedSide(){
    return _side * _side;
  }
}

