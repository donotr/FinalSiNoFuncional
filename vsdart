void main(){
  final String pokemon = 'Ditto';
  final int hp =100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final sprites = <String>['dito/front.png','ditto/back.png'];

//dynamic == null 
dynamic errorMessage = 'Hola';
errorMessage = true;
errorMessage = [1,2,3,4,5,6];
errorMessage = {1,2,3,4,5,6};
errorMessage = () => true;
errorMessage = null;

  
  
print ("""
$pokemon
$hp
$isAlive
$abilities
$sprites
$errorMessage
"""); 
  
  
  print(greetEveryone());
  
  print('Suma: ${addTwoNumbers(10,20)}');
  
  print(greetPerson(name: 'Fernando', message: 'Hi.'));
  
}


String greetEveryone()=> 'Hello everyone!';
int addTwoNumbers (int a, int b) => a + b;
int addTwoNumbersOptional (int a, [int b=0]){
// b??=0
  return a + b;
}

String greetPerson({required String name, String message = 'Hola.'}){
  return '$message Fernando';
}