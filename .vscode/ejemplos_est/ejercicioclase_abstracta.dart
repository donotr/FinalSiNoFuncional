void main(){

  final director = Director(nombreDirector: 'Juan',apellidoDir: 'Perez',edadDir: 30,salarioD: 500);

print("Director: Nombre:${director.nombre} " +"${director.apellido}"+", Edad: ${director.edad}," + "Salario: ${salaritoCalc (director)}");


}

double salaritoCalc(Persona p){
  if(p.salario < 500){
    return p.salario - 100;
  }
  return p.salario +100;
}

enum PersonaTipo { director, profesor, empleado}
class Persona {
  
  String nombre;
  String apellido;
  var edad;
  double salario;
  final PersonaTipo type; // director, profesor, empleado

  Persona({
    required this.nombre,
    required this.apellido,
    required this.edad,
    required this.salario,
    required this.type
  });
}

class Director extends Persona{ // HERENCIA

  Director({ required String nombreDirector, required String apellidoDir, required var edadDir,required double salarioD})
  : super(nombre: nombreDirector, apellido: apellidoDir, edad:edadDir, salario:salarioD, type: PersonaTipo.director);
}
