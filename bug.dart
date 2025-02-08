```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response body is a JSON list
      final data = jsonDecode(response.body) as List<dynamic>;
      // Process the data
      for (final item in data) {
        print(item['name']); // This will throw an error if 'name' is missing
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e'); // Handle the exception properly
  }
}
```