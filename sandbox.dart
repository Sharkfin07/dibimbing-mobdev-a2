// This function takes time (like cooking pizza)
Future<String> orderPizza() async {
  await Future.delayed(Duration(seconds: 5)); // Wait 5 seconds
  return "Delicious Pizza!";
}

// Using it
void main() async {
  print('a' * 10);
}
