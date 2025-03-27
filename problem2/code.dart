import 'dart:io';
import 'dart:math';

void main(){

   Shape triangle = Triangle(10, 5);
  Shape rectangle = Rectangle(10, 5);

  print('Triangel area: ${triangle.area()}');
  print('Rectangle area: ${rectangle.area()}');


}

class Shape{
  double height;
  double width;
  Shape(this.height,this.width);

  double area(){
    return 0;
  }
}

class Triangle extends Shape{
  Triangle(double height,double width) : super(height, width);
@override
  double area(){
    return width * height * 0.5;
  }
}

class Rectangle extends Shape {
  Rectangle(double width, double height) : super(width, height);

  @override
  double area() {
    return width * height;
  }
}
