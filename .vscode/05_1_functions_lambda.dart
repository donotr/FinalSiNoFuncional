void main(List<String> arguments){
  functionOne(1); // el parametro no es 3
  functionTwo(1); // el parametro no es 3
  functionOne(3); // el parametro es 3
  functionTwo(3); // el parametro es 3
}

void functionOne(int a){
  if(a==3){
    print('el parametro es 3');
  }else{
    print('el parametro no es 3');
  }
}

void functionTwo(int a) => print('el parametro ${a==3 ? 'es ' : 'no es ' }3');