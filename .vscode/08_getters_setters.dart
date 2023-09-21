void main(){



final mySquare = Square (side: 5);
//final mySquare.side = 5;  // esta es la clave para ingresar atraves del set
print('area: ${mySquare.area}');

mySquare.side=10;
print('${mySquare.side}');

}

class Square{

  double _side; // side * side


  Square({required double side})
  : assert(side >= 0, 'side must be >=0'),
  _side = side;

  double get area{
    return _side * _side;
  }

 double get side{
    return _side;
  }

  set side (double value){
    print('setting new value $value');
    if(value <0) throw 'Value must be >=0';

    _side = value;
  }


  double calculateArea(){
    return _side*_side;
  }
}