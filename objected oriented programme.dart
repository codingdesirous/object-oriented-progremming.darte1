abstract class Shape {
  double area();
}

class Rectangle implements Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double area() {
    return width * height;
  }
}

class Square extends Rectangle {
  Square(double sideLength) : super(sideLength, sideLength);
}

class Circle implements Shape {
  double radius;

  Circle(this.radius);

  double area() {
    return 3.14 * radius * radius;
  }
}

double calculateTotalArea(List<Shape> shapes) {
  double totalArea = 0;
  for (Shape shape in shapes) {
    totalArea += shape.area();
  }
  return totalArea;
}

// Example usage
void main() {
  List<Shape> shapes = [Rectangle(5, 4), Square(3), Circle(2)];

  double totalArea = calculateTotalArea(shapes);
  print("Total area of shapes: $totalArea");
}
