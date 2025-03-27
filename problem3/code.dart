import 'dart:io';

void main(){

  Daugther daugther = Daugther();
  daugther.display();


}


class Mother{

  void display(){
    print('I\'m a mother');
  }
}

class Daugther extends Mother{

@override
void display(){
  print('I\'m a daugther');
}
}
