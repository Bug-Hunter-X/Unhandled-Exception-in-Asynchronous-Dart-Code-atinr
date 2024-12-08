```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData here, handle potential exceptions within this section
    } else {
      // Handle HTTP error codes appropriately
      throw Exception('HTTP error: ${response.statusCode}');
    }
  } on FormatException catch (e) {
    // Handle JSON decoding errors specifically
    print('JSON decoding error: $e');
    // Consider retrying or returning a default value 
  } catch (e) {
    print('An unexpected error occurred: $e');
    // Log the error or take other actions
  }
}
```