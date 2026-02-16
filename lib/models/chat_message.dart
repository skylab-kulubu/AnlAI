// ============================================================
// GÜN 7 - ERSEL: MODEL SINIFI (ChatMessage)
// ============================================================
//
// JSON Nedir?
//   API'den gelen veri JSON formatındadır.
//   JSON = JavaScript Object Notation
//   Örnek: {"role": "user", "content": "Merhaba"}
//
//   Bu veriyi Dart objelerine çevirmemiz gerekiyor.
//   Bunun için Model sınıfı oluşturuyoruz.
//

class ChatMessage {
  // ----------------------------------------------------------
  // ADIM 1: Değişkenleri tanımla (role, content)
  // ----------------------------------------------------------
  final String role;
  final String content;

  // ----------------------------------------------------------
  // ADIM 2: Constructor (Kurucu Metot)
  // ----------------------------------------------------------
  ChatMessage({required this.role, required this.content});


  // ----------------------------------------------------------
  // ADIM 3: fromJson metodu (Map -> Object)
  // ----------------------------------------------------------
  factory ChatMessage.fromJson(Map<String, dynamic> json) {
    return ChatMessage(
      role: json['role'],
      content: json['content'],
    );
  }

  // ----------------------------------------------------------
  // ADIM 4: toJson metodu (Object -> Map)
  // ----------------------------------------------------------
  Map<String, dynamic> toJson() {
    return {
      'role': role,
      'content': content,
    };
  }

}
