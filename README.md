# Unhandled JSON Key Errors in Dart's async/await

This repository demonstrates a common error in Dart applications that use asynchronous programming and JSON data: failure to handle exceptions when accessing keys in JSON objects that may not exist.

The `bug.dart` file contains code that fetches JSON data from an API.  It handles HTTP request errors, but it doesn't gracefully handle situations where a JSON object is missing a key that the code attempts to access. This can lead to runtime errors and application crashes.

The `bugSolution.dart` file provides a solution that addresses this issue by using null-aware operators and conditional checks to safely access JSON keys.