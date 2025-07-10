(int, int) toCoupleDigit(int number) {
  if (number > 99) {
    throw Exception("$number is more than 2 digits");
  } else if (number < 0) {
    throw Exception("$number is invalid number");
  }
  int first = number ~/ 10;
  int second = number - first * 10;
  return (first, second);
}