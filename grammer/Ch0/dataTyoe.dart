// void main() {
//   String name = "cocoa";
//   bool alive = true;
//   int age = 12;
//   double money = 69.99;

//   // num: int와 double의 부모 클래스
//   num x = 12;
//   x = 1.1;
// }

// Lists
void main() {
  var giveMeFive = true;
  var numbers = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5,
  ];
  // if (giveMeFive) {
  //   numbers.add(5);
  // }
  print(numbers);
  // List<int> numbers = [1, 2, 3, 4];
  numbers.add(1);
  numbers.first;
  numbers.last;
}
