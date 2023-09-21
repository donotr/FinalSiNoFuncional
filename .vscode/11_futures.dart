void main(){
  print('Inicio del programa');

  httpGet('https://google.com')
  .then(
    (value){
      print(value);
    })
    .catchError((err){
      print('Error: $err');
    });

print('Fin del programa');
}

Future<String> httpGet(String url){
  return Future.delayed(const Duration(seconds:1),(){ // el parentesis es una funcion que no hace nada,
    throw 'Error en la pteicion http';                // se llaman funciones anonimas
    // return 'Respuesta de la peticion http';
  }); // Future.delayed
}