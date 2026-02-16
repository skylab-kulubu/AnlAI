// ============================================================
// GÜN 7 - ERSEL: API SERVİS SINIFI (ChatService)
// ============================================================
//
// Servis Kullanımı:
//   API'ye istek atmak için http paketini kullanıyoruz.
//   API key'i güvenlik için .env dosyasından okuyoruz.
//
// Groq API bilgileri:
//   - Endpoint: https://api.groq.com/openai/v1/chat/completions
//   - Model: llama-3.3-70b-versatile
//   - Key: https://console.groq.com adresinden alınır
//

// ----------------------------------------------------------
// ADIM 1: Importlar (convert, http, dotenv)
// ----------------------------------------------------------
  import 'dart:convert';
  import 'package:http/http.dart' as http;
  import 'package:flutter_dotenv/flutter_dotenv.dart';


class ChatService {
  // ----------------------------------------------------------
  // ADIM 2: Sabitler (Url, Key, Model)
  // ----------------------------------------------------------
  static const String _baseUrl = "https://api.groq.com/openai/v1/chat/completions";
  static const String _model = "llama-3.3-70b-versatile";
  static String get _apiKey => dotenv.env['GROQ_API_KEY'] ?? "";

  // ----------------------------------------------------------
  // ADIM 3: sendMessage fonksiyonu (İstek atma & Cevap alma)
  // ----------------------------------------------------------
  static Future<String> sendMessage(List<Map<String, String>> messages) async {
    final url = Uri.parse(_baseUrl);
    final body = json.encode({
      "model": _model,
      "messages": messages,
    });
    
    final response = await http.post(
      url,
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $_apiKey",
      },
      body: body,
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data['choices'][0]['message']['content'];
    } else {
      throw Exception("API'den cevap alınamadı");
    }
  }
}
