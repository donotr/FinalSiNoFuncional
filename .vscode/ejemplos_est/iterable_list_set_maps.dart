void main() {

// Dado una lista que contiene los siguientes valores 
//[1,1,2,3,5,8,13,24,66,99] devolver los elementos que son menores o 
//iguales a 5
{
// List
  List<int> myList = [1,1,2,3,5,8,13,24,66,99];
  for(int i in myList) {
    if(i <= 5) {
      print(i);
    }
  }
}

print('\n***********\n');


print('\n***********\n');

// Set
{
  final numeros = [1,1,2,3,5,8,13,24,66,99];
  final mySet = Set<int>.from(numeros);
  final x = 5;
  
  print('Numeros mayor que $x en list: ${mayorQueX(numeros, 5)}');
  print('Numeros mayor que $x en set: ${mayorQueX(mySet, 5)}');

}
Set setNumeros = <int> {1,1,2,3,5,8,13,24,66,99};
Set<int> setNumeros2 = {1,1,2,3,5,8,13,24,66,99,4};
print(setNumeros2.length);

print('\n***********\n');

// Maps
var mapContactos = {'David': 75167726, 'Raul': 75167716};
print(mapContactos);



}

 

 // Iterable
int mayorQueX(Iterable<int> collection, int x) {
  return collection.where((item) => item > x).length;
}