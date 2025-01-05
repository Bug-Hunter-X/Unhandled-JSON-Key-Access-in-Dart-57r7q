```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonResponse = json.decode(response.body);
      // Accessing a non-existent key will throw an exception if not handled properly
      final value = jsonResponse['nonExistentKey']; 
      print(value);
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Consider rethrowing the exception or handling it appropriately based on your app's logic
  }
}
```