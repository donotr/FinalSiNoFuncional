void main(){
 final Hero wolverine = Hero(name:'Logan',power:'Regeneracion');

 print(wolverine);
 print(wolverine.name);
 print(wolverine.power);

}

class Hero {

  String name;
  String power;


  Hero({

    required this.name, //required significa que es obligatorio, no puede quedar vacio
    this.power = 'Sin poder'
  });

  /*
Hero(String pname, String pPower)
  : name = pName,
    power = pPower;
  */

  @override
  String toString(){
    return '$name - $power';
  }
}