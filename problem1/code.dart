import 'dart:io';

void main(){

    Calculator c = new Calculator();
    print(c.sum(5, 4));

}

class Calculator {
  
  int sum(int a, int b){
    return a+b;
  }
  int subtraction(int a, int b){
    return a-b;
  }
  int multiplication(int a, int b)
  {
    return a*b;
  }
  double division(int a, int b){
    return a/b;
  }
} 
