class Car{
  late String brand;
  late String model;
  late int year;

  late double milesDriven; // a double representing the number of miles driven by the car
  static int numberOfCars = 0;

  // methods
  Car(this.brand, this.model, this.year, this.milesDriven){
    numberOfCars++; //or... numberOfCars = numberOfCars + 1;
  }

  void drive(double miles){
    milesDriven = miles;
  } // a method that takes a double parameter representing the number of miles driven and adds it to
  // the milesDriven property

  getMilesDriven(){
    return milesDriven;
  } //a method that returns the value of the milesDriven property

  getBrand(){
    return brand;
  } // a method that returns the value of the brand property

  String getModel(){
    return model;
  } // a method that returns the value of the model property

  int getYear(){
    return year;
  } // a method that returns the value of the year property

  int getAge(){
    int currentYear = 2024;
    int madeIn = year;
    int age = (currentYear - madeIn);
    return age;

  } // a method that returns the age of the car (i.e. the difference between the
// current year and the year property)
}
main(){
  Car car1 = Car('Mercedes Benz', 'S-Class', 1954, 100);
  print('Car1: ${car1.getBrand()}');
  print('Model: ${car1.getModel()}');
  print('Release date: ${car1.getYear()}');
  print('${car1.brand} age: ${car1.getAge()} years');
  car1.drive(1000);
  print('Miles Driven: ${car1.getMilesDriven()}');


  Car car2 =  Car('BMW', '3 Series', 1975, 45);
  print('Car2: ${car2.getBrand()}');
  print('Model: ${car2.getModel()}');
  print('Release date: ${car2.getYear()}');
  print('${car2.brand} age: ${car2.getAge()} years');
  car2.drive(1000);
  print('Miles Driven: ${car2.getMilesDriven()}');

  Car car3 = Car('Toyota', 'Corolla', 1966, 1000);
  print('Car3: ${car3.getBrand()}');
  print('Model: ${car3.getModel()}');
  print('Release date: ${car3.getYear()}');
  print('${car3.brand} age: ${car3.getAge()} years');
  car3.drive(1000);
  print('Miles Driven: ${car3.getMilesDriven()}');


  print('Number of Cars created: ${Car.numberOfCars}');
}