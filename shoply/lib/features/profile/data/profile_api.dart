// ignore_for_file: avoid_print

import '../../../shared/result.dart';

Future<Result<String>> fetchProfile(String? userID) async {
  await Future<void>.delayed(Duration(seconds: 1));
  if (userID == null || userID.isEmpty) {
    return Error("No user ID provided");
  } else {
    return Success("Profile data for user $userID");
  }
}

void printResult<T> (Result<T> result) {
  switch(result) {
    case Success(:final data):
      print("Success: $data");
    case Error(:final message):
      print("Error: $message");
  }
}