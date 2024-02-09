import 'dart:convert';
import 'package:http/http.dart' as http;

class ChatService {
  final String apiKey = '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';
  final String apiUrl = 'https://api.openai.com/v1/chat/completions';

  Future<String> sendMessage(String message) async {
    final uri = Uri.parse(apiUrl);
    try {
      final response = await http.post(
        uri,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $apiKey',
        },
        body: jsonEncode({
          'model': 'gpt-3.5-turbo', // Adjust model name if necessary
          'messages': [
            {"role": "user", "content": message},
          ],
        }),
      );

      print('Response status: ${response.statusCode}'); // Print status code
      print('Response body: ${response.body}'); // Print the raw response body

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        String botResponse = data['choices'][0]['message']['content'].trim();
        print('Bot response: $botResponse'); // Print the bot's response
        return botResponse;
      } else {
        throw Exception('Failed to load response: ${response.statusCode}');
      }
    } catch (e) {
      print('Error sending message: $e');
      rethrow;
    }
  }
}
