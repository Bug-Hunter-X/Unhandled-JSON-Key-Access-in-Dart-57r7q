# Unhandled JSON Key Access in Dart

This repository demonstrates a common error in Dart: attempting to access a non-existent key in a JSON response without proper error handling.  The `bug.dart` file shows the problematic code, while `bugSolution.dart` provides a corrected version.

The issue arises when the code assumes the existence of a key ('nonExistentKey' in this case) in the JSON response. If this key is missing, a runtime exception occurs.  The solution incorporates robust error checking to prevent this.

This example highlights the importance of defensive programming when dealing with external data sources.