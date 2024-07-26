void main(){
  emitNumbers().listen((value){
    print('Stream value: $value');
    
  });
}
//This strem is flow data 
Stream<int> emitNumbers(){
  return Stream.periodic( const Duration(seconds: 4), (value){
    return value;
  }).take(7);
  
  
}