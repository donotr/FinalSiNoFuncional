void main() {
  print('=== EJEMPLO SET ===');
  //representa una coleccion de elementos unicos, no pueden haber DUPLICADOS
  Set<String> week = {'Lunes','Martes','Miercoles','Jueves','Viernes'}; //si quito el <string> yo borro martes y le pongo 1, lo tomara como bueno pq se vuelve dinamico, pero si lo dejo como string es imposible que adapte el dato.
  Set<String> weekend = {'Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo'};
  print('Dias de la semana: $week');
  print('semana + fin de semana: $weekend');

 /* final differenceSet = weekend.difference(week);
  if (differenceSet.isEmpty) {
  print('No hay días diferentes entre week y weekend.');
} else {
  print('Días diferentes entre week y weekend: $differenceSet');
}*/
/*
print('*******************');
var kidsBooks = {'Matilda': 'Roald Dahl',
                 'Green Eggs and Ham': 'Dr Seuss',
                 'Where the Wild Things Are': 'Maurice Sendak'};
for (var book in kidsBooks.keys) {
  print('$book was written by ${kidsBooks[book]}');
}*/

print('*******************');

var kidsBooks = {1: 'Roald Dahl',
                 2: 'Dr Seuss',
                 3: 'Maurice Sendak'};
for (var book in kidsBooks.keys) {
  print('$book was written by ${kidsBooks[book]}');
}

Iterable<int> iterable = [1,2,3];
int prueba = mayorQueX(iterable,1);
print('este es el resultado, dentro del iterable hay $prueba mayor a 1' );

int prueba2= mayorQue2(iterable, 2);
print('este es el resultado, dentro del iterable hay $prueba2 mayor a 2' );

}

 // Iterable
int mayorQueX(Iterable<int> collection, int x) {
  return collection.where((item) => item > x).length;
}
int mayorQue2(Iterable<int> colextion, int x){
  return colextion.where((item) => item > 2).length;
}