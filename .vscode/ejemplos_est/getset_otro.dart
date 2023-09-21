//creating class named Gfg
class Gfg{
  //creating a 
  String geekName='';

  String get getName{
    return geekName;
  }
  //Creating the setter method
  // to set the input in Field/Property
  set setName(String name){
    geekName = name;
  }
}

void main(){
  //Creating instance of class
  Gfg geek= Gfg();
//calling the set_name method(setter method we created)
////To set the value in property "geekName"
  geek.setName="GeeksForGeeks";
//calling the get_name method(getter method we created)
//to get the value from property "geekName"

  print('Welcome to ${geek.getName}');
}