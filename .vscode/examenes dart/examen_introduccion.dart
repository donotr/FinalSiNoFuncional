class PierreCardin {}

abstract class Zapateria {
    double precio;
    String tipo;
    double talla;
    Departamento dept;
    Categoria cat;
    

  Zapateria({
    required this.precio,
    required this.tipo,
    required this.talla,
    required this.dept,
    required this.cat
  });
}

abstract class Camiseteria {
    double precio;
    String tipo;
    String talla;
    Departamento dept;
    Categoria cat;
    

  Camiseteria({
    required this.precio,
    required this.tipo,
    required this.talla,
    required this.dept,
    required this.cat

  });
}

abstract class Pantaloneria {
    double precio;
    String tipo;
    double talla;
    Departamento dept;
    Categoria cat;
    

  Pantaloneria({
    required this.precio,
    required this.tipo,
    required this.talla,
    required this.dept,
    required this.cat
  });
}

mixin Hombre{
  void artHombre() => print('Es un articulo de Hombre');
}
mixin Mujer{
  void artMujer()=> print('Es un articulo de Mujer');
}
mixin Nino{
  void artNino()=> print('Es un articulo de Niño');
}

enum Categoria{hombre,mujer,nino}
enum Departamento{zapatos,camisas,pantalones}

class Camisa extends Camiseteria with Hombre,Mujer,Nino{
Camisa({required double precio,required String tipo,required String talla, required Departamento dept,required Categoria cat})
:super(precio: precio,tipo: tipo,talla: talla,dept: dept, cat:cat);

}
class Pantalon extends Pantaloneria with Hombre,Mujer,Nino{
  Pantalon({required double precio,required String tipo,required double talla, required Departamento dept,required Categoria cat})
:super(precio: precio,tipo: tipo,talla: talla,dept: dept, cat:cat);
}
class Zapatos extends Zapateria with Hombre,Mujer,Nino{
  Zapatos({required double precio,required String tipo,required double talla, required Departamento dept,required Categoria cat})
:super(precio: precio,tipo: tipo,talla: talla,dept: dept, cat:cat);

}



void main(){

  //Creando instancias de zapatos
  List<Zapatos> zapatitos=[
    Zapatos(precio: 29.99,tipo: 'Deportivo',talla: 11.5,dept: Departamento.zapatos,cat: Categoria.hombre),
    Zapatos(precio: 19.99,tipo: 'Casual',talla: 14,dept: Departamento.zapatos,cat: Categoria.mujer),
    Zapatos(precio: 29.99,tipo: 'Formal',talla: 13.5,dept: Departamento.zapatos,cat: Categoria.nino)
  ];
  //Creando instancias de camisetas
  List<Camisa> camisitas=[
    Camisa(precio: 24.99,tipo: 'Camiseta Deportiva',talla: 'S',dept: Departamento.camisas,cat: Categoria.hombre),
    Camisa(precio: 19.99,tipo: 'Camiseta de manga corta',talla: 'L' ,dept: Departamento.camisas,cat: Categoria.mujer),
    Camisa(precio: 29.99,tipo: 'Camiseta de manga larga',talla: 'XS',dept: Departamento.camisas,cat: Categoria.nino)
  ];
  //Creando instancias de pantalones
  List<Pantalon> pantaloncitos=[
    Pantalon(precio: 39.99,tipo: 'Jeans',talla: 34,dept: Departamento.pantalones,cat: Categoria.hombre),
    Pantalon(precio: 29.99,tipo: 'Pantalones de chándal',talla: 30 ,dept: Departamento.pantalones,cat: Categoria.mujer),
    Pantalon(precio: 49.99,tipo: 'Mom Jeans',talla: 2,dept: Departamento.pantalones,cat: Categoria.mujer),
    Pantalon(precio: 20.99, tipo: 'Cargo Jeans', talla: 4, dept: Departamento.pantalones , cat: Categoria.mujer)
  ];


  for(var zap in zapatitos){
    print('Zapato: \n Precio: ${zap.precio}'+
    '\n Tipo: ${zap.tipo}' + '\n Talla: ${zap.talla}' + '\n Departamento: ${zap.dept}' + '\n Categoria: ${zap.cat}');
    print('\n');
  }
  print('Cantidad: ${zapatitos.length}');
  print('XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');

    for(var cam in camisitas){
    print('Camisa: \n Precio: ${cam.precio}'+
    '\n Tipo: ${cam.tipo}' + '\n Talla: ${cam.talla}' + '\n Departamento: ${cam.dept}' + '\n Categoria: ${cam.cat}');
    print('\n');
  }
  print('Cantidad: ${camisitas.length}');
  print('XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');

    for(var pant in pantaloncitos){
    print('Pantalon: \n Precio: ${pant.precio}'+
    '\n Tipo: ${pant.tipo}' + '\n Talla: ${pant.talla}' + '\n Departamento: ${pant.dept}' + '\n Categoria: ${pant.cat}');
    print('\n');
  }
  print('Cantidad: ${pantaloncitos.length}');
  print('XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
  
  int totalArt = pantaloncitos.length + camisitas.length + zapatitos.length;

  print('TOTAL ARTICULOS: ${totalArt}');
}

