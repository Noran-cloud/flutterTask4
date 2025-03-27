import 'dart:io';

void main(){

  Animal zebra = Animal();
  Animal dolphin = Animal();

  zebra.set_value('zebra', 7);
  dolphin.set_value('dolphin', 8);
 
 print('name = ${zebra.name}, age = ${zebra.age} and his place of origin is Africa');
 print('name = ${dolphin.name}, age = ${dolphin.age} and they are found in oceans worldwide');

}


class Animal{
  String? name;
  int? age;

  void set_value(String name, int age)
  {
    this.name = name;
    this.age = age;
  }
}
