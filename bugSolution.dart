```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as List<dynamic>;
      for (final item in data) {
        // Safely access the 'name' key using null-aware operators
        final name = item['name'];
        if (name != null) {
          print(name);
        } else {
          print('Missing name key in JSON object.');
        }
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Log the error with more context (consider using a logging library)
    print('Error fetching data: $e');
    // Consider adding error handling strategies for user feedback (display error messages, etc.)
  }
}
```