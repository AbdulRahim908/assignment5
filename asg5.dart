import 'dart:io';
import 'dart:math';

void main() {
// Q1)Check if "fri" exist in expanses; if exist change it's value to 5000.0 otherwise add 'fri' to expenses
// and set its value to 5000.0 then print expenses.
  Map<String, double> expenses = {'sun': 3000.0, 'mon': 3000.0, 'tue': 3234.0};
  if (expenses.keys == 'fri') {
    expenses.putIfAbsent("fri", () => 5000.0);
  } else {
    expenses['fri'] = 5000.0;
  }
  print("ANSWER 1");
  print(expenses);

  // Q2) Write a program in Dart that find the area of a circle using function.

  print("ANSWER 2");
  areaofcircle(3.14, 5);
  // Q3) Write a program in a dart that implements the Pythagorean theorem using function

  double a = 3;
  double b = 4;
  double c = Hypotenuse(a, b);
  print("ANSWER3");
  print('The hypotenuse of a triangle with sides $a and $b is $c');

  // Q4: Write a program in Dart to reverse a String using function.

  print("ANSWER 4");
  print(reverse("My Name is Rahim"));
  // Q5: Write a program in Dart to signup user by using username, email & password as required fields while  phoneNumber is optional using function, call this function at least 3 times to create different users. Now create another function named
  // as loginUser and then try to login with correct & incorrect credentials
  print("Answer5");
  signup("Abdul Rahim", "abdulrahimkhan699@gmail.com", "123", 03212169976);
  signup("subhan ahmed", "kodu@gmail.com", "xyz");
  signup("alex", "alex1@gmail.com", "abc", 03232049117);
  loginuser("Abdul Rahim", "abdulrahimkhan699@gmail.com", "123");
  loginuser("subhan ahmed", "kodu@gmail.com", "xyz");
  loginuser("alex", "alex1@gmail.com", "abc");
  loginuser("A rahim", "rahim@gmail.com", "123");
  loginuser("subhan ahmed", "kodu@gmail.com", "vji");

  // Q6:  Write a program in Dart to calculate power of a certain numbers using function only.
  print("ANSWER 6");
  print(pow(5, 2));
  // Q7: Write a function to calculate number of vowels and consonant in a String
  print("ANSWER 7");
  count("elephant is fat");
}

//FUNCTIONS
power(base, exponent) {
  var result = base ^ exponent;
  print(result); //not working thats why used predefined
}

areaofcircle(pi, r) {
  var ac = pi * (r * r);
  print(ac);
}

double Hypotenuse(double a, double b) {
  return sqrt(pow(a, 2) + pow(b, 2));
}

reverse(string) {
  String reversedStr = "";
  for (var i = string.length - 1; i >= 0; i--) {
    reversedStr += string[i];
  }
  return reversedStr;
}

signup(username, email, password, [PhoneNumber]) {}

loginuser(username, email, password) {
  if (username == "Abdul Rahim" &&
      email == "abdulrahimkhan699@gmail.com" &&
      password == "123") {
    print("login successful");
  } else if (username == "subhan ahmed" &&
      email == "kodu@gmail.com" &&
      password == "xyz") {
    print("login successful");
  } else if (username == "alex" &&
      email == "alex1@gmail.com" &&
      password == "abc") {
    print("login successful");
  } else {
    print("login unsuccessful");
  }
}

count(str) {
  int vowels = 0;
  int consonants = 0;
  for (int i = 0; i < str.length; i++) {
    if (str[i] == 'a' ||
        str[i] == 'e' ||
        str[i] == 'i' ||
        str[i] == 'o' ||
        str[i] == 'u') {
      vowels++;
    } else if (str[i] == 'b' ||
        str[i] == 'c' ||
        str[i] == 'd' ||
        str[i] == 'f' ||
        str[i] == 'g' ||
        str[i] == 'h' ||
        str[i] == 'j' ||
        str[i] == 'k' ||
        str[i] == 'l' ||
        str[i] == 'm' ||
        str[i] == 'n' ||
        str[i] == 'p' ||
        str[i] == 'q' ||
        str[i] == 'r' ||
        str[i] == 's' ||
        str[i] == 't' ||
        str[i] == 'v' ||
        str[i] == 'w' ||
        str[i] == 'x' ||
        str[i] == 'y' ||
        str[i] == 'z') {
      consonants++;
    }
  }
  print("no of vowels: $vowels");
  print("no of consonants: $consonants");
}
