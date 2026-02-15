// ============================================================
// GÜN 7 - ERSEL: API SERVİS SINIFI
// ============================================================
//
// Servis Kullanımı (http / dio):
//   Bu dosyada Groq API ile iletişim kuran servis sınıfı oluşturulacak.
//
// Groq API bilgileri:
//   - Endpoint: https://api.groq.com/openai/v1/chat/completions
//   - Model: llama-3.3-70b-versatile
//   - API Key: .env dosyasından okunacak (flutter_dotenv paketi ile)
//   - Key almak için: https://console.groq.com
//
// Yapılacaklar:
//   - http veya dio paketi ile POST isteği atılacak
//   - Header: Authorization (Bearer token), Content-Type (application/json)
//   - Body: model adı ve mesaj listesi gönderilecek
//   - Response parse edilip cevap döndürülecek
//   - Hata yönetimi yapılacak
