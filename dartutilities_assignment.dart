
//String Manipulation

import 'dart:io';

void main() {
  // String manipulation
  String originalString = "Hello, Dart!";
  
  // String concatenation
  String concatenatedString = originalString + " Let's learn more.";
  
  // String interpolation
  String interpolatedString = "Original string: $originalString";
  
  // Substring extraction
  String substring = originalString.substring(0, 5);
  
  // Case conversion
  String upperCaseString = originalString.toUpperCase();
  String lowerCaseString = originalString.toLowerCase();
  
  // Reverse string
  String reversedString = originalString.split('').reversed.join('');
  
  // Length of the string
  int stringLength = originalString.length;
  
  print("Original String: $originalString");
  print("Concatenated String: $concatenatedString");
  print("Interpolated String: $interpolatedString");
  print("Substring: $substring");
  print("Uppercase: $upperCaseString");
  print("Lowercase: $lowerCaseString");
  print("Reversed String: $reversedString");
  print("String Length: $stringLength");
}

//Collections (Lists, Sets, Maps)

void collectionsDemo() {
  // List
  List<String> names = ['Alice', 'Bob', 'Charlie'];
  names.add('Diana');
  names.remove('Bob');
  print('List: $names');

  // Set
  Set<int> numbers = {1, 2, 3};
  numbers.add(4);
  numbers.remove(2);
  print('Set: $numbers');

  // Map
  Map<String, int> ages = {'Alice': 30, 'Bob': 25};
  ages['Charlie'] = 35;
  ages.remove('Bob');
  print('Map: $ages');
}

 //File Handling


void fileHandlingDemo() async {
  try {
    // Read from a file
    String content = await File('input.txt').readAsString();
    print('File content: $content');
    
    // Write to another file
    await File('output.txt').writeAsString('New data written to file.');
    print('Data written to output.txt');
  } catch (e) {
    print('Error: $e');
  }
}


 //Date and Time


 void dateTimeDemo() {
  // Current date and time
  DateTime now = DateTime.now();
  print('Current DateTime: $now');
  
  // Format date
  String formattedDate = '${now.year}-${now.month}-${now.day}';
  print('Formatted Date: $formattedDate');
  
  // Parse date
  DateTime parsedDate = DateTime.parse('2024-09-19');
  print('Parsed Date: $parsedDate');
  
  // Add days
  DateTime futureDate = now.add(Duration(days: 10));
  print('Future Date: $futureDate');
  
  // Subtract days
  DateTime pastDate = now.subtract(Duration(days: 10));
  print('Past Date: $pastDate');
  
  // Difference between two dates
  Duration difference = futureDate.difference(pastDate);
  print('Difference between dates: ${difference.inDays} days');
}

//Combined Application


void main() async {
  // String manipulation
  String userInput = 'Hello, Dart!';
  String reversedString = userInput.split('').reversed.join('');
  String timestamp = DateTime.now().toIso8601String();

  // Store results in a collection
  Map<String, String> data = {
    'original': userInput,
    'reversed': reversedString,
    'timestamp': timestamp
  };

  // Write data to file
  try {
    await File('log.txt').writeAsString(data.toString());
    print('Data saved to log.txt');
  } catch (e) {
    print('Error: $e');
  }
  
  // Demonstrate other utilities
  collectionsDemo();
  await fileHandlingDemo();
  dateTimeDemo();
}
