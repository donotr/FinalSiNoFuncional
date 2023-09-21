// Enum para representar roles
enum Rol { empleado, profesor, director }

// Clase base Persona
class Persona {
  String nombre;
  String apellido;
  int edad;
  Rol rol;

  Persona(this.nombre, this.apellido, this.edad, this.rol);

  double calcularSalario() {
    switch (rol) {
      case Rol.empleado:
        return 1500.0; // Ejemplo de salario para Empleado
      case Rol.profesor:
        return 50.0 * 40; // Ejemplo de salario por hora para Profesor
      case Rol.director:
        return 10000.00; // Ejemplo de salario fijo para Director
      default:
        return 0.0; // Valor predeterminado si el rol no está definido
    }
  }

  void imprimirDatos() {
    print('Nombre: $nombre $apellido');
    print('Edad: $edad años');
    print('Rol: $rol');
    print('Salario: \$${calcularSalario()}');
  }
}

void main() {
  // Crear instancias de personas con diferentes roles
  var empleado = Persona('Ever', 'Esli', 33, Rol.empleado);
  var profesor = Persona('Elon', 'Musk', 55, Rol.profesor);
  var director = Persona('Wilfredo', 'Melgar', 45, Rol.director);

  // Imprimir los datos y salarios de cada persona
  empleado.imprimirDatos();
  print('\n');
  profesor.imprimirDatos();
  print('\n');
  director.imprimirDatos();
}
