import 'dart:convert';
import 'model_quiz.dart';

List<Quiz> parseQuizs(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Quiz>((json) => Quiz.fromJson(json)).toList();
}
