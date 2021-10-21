import 'package:home_work_task/home_work_task.dart' as home_work_task;
import 'dart:io';

/**
 * 
 * 
 * task 1
 * Create a program that asks the user to enter their name and their age. Print out a message that tells how many years they have to be 100 years old.
 * 
 */
Task1() {
  // output message
  print('What\s your name?');
  // input string
  var name = stdin.readLineSync();
  // output message
  print('What\'s your age?');
  // input message
  var age = stdin.readLineSync();
  // convert to integer
  var ageInt = int.tryParse(age ?? "");
  // check value null or not ?
  if (ageInt != null) {
    // output message
    print('Hey, ${name} .');
    // condition
    if (ageInt > 100) {
      print('your now 100+.your age is ${age}');
    } else {
      ageInt = 100 - ageInt;
      print(
          ' You still need ${ageInt} years to be 100 years old.your age is ${age}');
    }
  } else {
    print('invalid age. plaease enter a valid age.');
    Task1();
  }
}

/**
 * 
 * 
 * task 2
 * Ask the user for a number. Depending on whether the number is even or odd, print out an appropriate message to the user.
 * 
 */
Task2() {
  // output message
  print('Please give me a number..');
  // input message
  var num1 = stdin.readLineSync();
  // output message
  var number = int.tryParse(num1 ?? "");
  // check value null or not
  if (number != null) {
    // condition
    if (number % 2 == 0) {
      print("${num1} is a even number");
    } else {
      print('this is a odd number.');
    }
  } else {
    print('invalid number. plaease enter a valid number.');
    Task2();
  }
}

/**
 * 
 * 
 * task 3
 * Take a list, say for example this one: a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89] and write a program that prints out all the elements of the list that are less than 5.
 * 
 */
Task3() {
  var numberList = [1, 5, 7, 20, 3, 2, 4, 9, 12, 16];

  // using forech loop
  numberList.forEach((number) {
    if (number < 5) print(number);
  });

  //using while loop
  /*
  int i = 0;
  while (i < numberList.length) {
    if (i < 5) print(numberList[i]);
    i++;
  }
  */

  // using for loop
  /*
  for (int number in numberList) {
    if (number < 5) print(number);
  }
  */
}

/**
 * 
 * 
 * Task 4 
 * Create a program that asks the user for a number and then prints out a list of all the divisors of that number.
If you don’t know what a divisor is, it is a number that divides evenly into another number. For example, 13 is a divisor of 26 because 26 / 13 has no remainder.
 *
 */
Task4() {
  // output message
  print('Please give me a number..');
  // input value
  var num1 = stdin.readLineSync();
  // convert to integer
  var number = int.tryParse(num1 ?? "");
  // check valu null or not
  if (number != null) {
    var divisors = [];
    int i = 1;
    // while Loop
    while (i <= number) {
      // condition
      if (number % i == 0) {
        divisors.add(i);
      }
      i++;
    }
    print(divisors);
  } else {
    print('invalid number. plaease enter a valid number.');
    Task4();
  }
}

/**
 * 
 * 
 * tas5 5
 * 
 * Create a program that asks the user for a number and then prints out a list of all the divisors of that number.
If you don’t know what a divisor is, it is a number that divides evenly into another number. For example, 13 is a divisor of 26 because 26 / 13 has no remainder.
 *
 */

Task5() {
  var a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  var b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  /***
   * 
   * Example one
   * 
   */
  var result = [];
// condition to determine which arry length is big
  if (a.length > b.length) {
    // foreach loop
    a.forEach((e) {
      if (b.contains(e)) {
        result.add(e);
      }
    });
  } else {
    // foreach loop
    b.forEach((e) {
      if (a.contains(e)) {
        result.add(e);
      }
    });
  }
  print(result);
}

/**
 * 
 * 
 * run module
 * 
 * 
 */
RunTask() {
  //output message
  print('Which task You want to run? 1,2,3,4 or 5 ?');
  // input number
  var num1 = stdin.readLineSync();
  // convert to int
  var number = int.tryParse(num1 ?? "");
  switch (number) {
    case 1:
      Task1();
      break;

    case 2:
      Task2();
      break;

    case 3:
      Task3();
      break;

    case 4:
      Task4();
      break;

    case 5:
      Task5();
      break;

    default:
      print('inviled task number. please enter a valid task number.');
      RunTask();
      break;
  }
  return RunTask();
}

void main() {
  // call function
  RunTask();
}
