```dart
class MyClass {
  int? _myVariable;

  MyClass(this._myVariable); // Constructor

  void myMethod() {
    print(_myVariable ?? 0); // Accessing potentially null variable
  }
}

void main() {
  var obj = MyClass(null);
  obj.myMethod(); // This will work fine because of null-aware operator

  obj._myVariable = 10;
  obj.myMethod(); // This will also work fine

  obj._myVariable = null; // Setting back to null
  obj.myMethod(); // This will also work fine

  var myInt = obj._myVariable; //Error:  Null check operator used on a null value
  print(myInt);
}
```