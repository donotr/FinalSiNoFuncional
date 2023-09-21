void main() {
  final director = Director('Donovan', 'Tobar', 45);
  final profesor = Profesor('Rogelio', 'Ramirez', 35);
  final empleado = Empleado('Arturo', 'Arevalo', 25);

// ejemplo de impresion fuera de metodo 
// print('Nombre ${director.nombre} ' + '${director.apellido},' + ' Edad: ${director.edad}');

  print('\nDatos del Director:');
  print(director.toString());
  director.calcularSalario();
  print('\nDatos del Profesor:');
  print(profesor.toString());
  profesor.calcularSalario();
  print('\nDatos del Empleado:');
  print(empleado.toString());
  empleado.calcularSalario();
}

enum tipoPersona {director, profesor, empleado}
abstract class Persona {
  String nombre;
  String apellido;
  int edad;
  final tipoPersona tipo;

  Persona({required this.nombre,
          required this.apellido,
          required this.edad,
          required this.tipo});

String toString();
void calcularSalario();
}

class Director extends Persona {
  Director(String nombreD, String apellidoD, int edadD)
      : super(nombre: nombreD, apellido: apellidoD, edad: edadD, tipo: tipoPersona.director);

  @override
  void calcularSalario() {
    print('Salario del Director: ${600}');
  }
      String toString(){
    final tipoStr = tipo.toString().split('.').last;
    return 'Nombre: $nombre' + ' $apellido,'+'Edad: $edad' + '. Tipo: $tipoStr';
  }
}

class Profesor extends Persona {
  Profesor(String nombreP, String apellidoP, int edadP)
      : super(nombre: nombreP, apellido: apellidoP, edad: edadP,tipo: tipoPersona.profesor);

  @override
  void calcularSalario() {
    print('Salario del Profesor: ${500}');
  }
  @override
    String toString(){
    final tipoStr = tipo.toString().split('.').last;
    return 'Nombre: $nombre' + ' $apellido,'+'Edad: $edad' + '. Tipo: $tipoStr';
  }
}

class Empleado extends Persona {
  Empleado(String nombreE, String apellidoE, int edadE)
      : super(nombre: nombreE, apellido: apellidoE, edad:edadE,tipo: tipoPersona.empleado);

  @override
  void calcularSalario() {
    print('Salario del Empleado: ${400}');
  }
  @override
    String toString(){
    final tipoStr = tipo.toString().split('.').last;
    return 'Nombre: $nombre' + ' $apellido,'+'Edad: $edad' + '. Tipo: $tipoStr';
  }
}