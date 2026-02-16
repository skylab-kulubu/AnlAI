# AnlAI - AI Chat Uygulaması

SkyLab Mobilab Bootcamp Hafta 3 pratik projesi. Flutter ile geliştirilmiş bir AI sohbet uygulaması.

## Proje Hakkında

AnlAI, Groq API kullanarak yapay zeka ile sohbet etmenizi sağlayan bir mobil uygulamadır. 3 günlük bootcamp Vsürecinde adım adım geliştirilecektir.

## Haftalık Plan

### Gün 7 - Ersel: Network & API
- JSON Nedir?
- Model sınıfları oluşturma
- Servis kullanımı (http / dio)
- Groq API bağlantısı ile basit chatleşme

### Gün 8 - Emin: Firebase
- Firebase Auth
- AI chat uygulamasına auth bağlanır
- 'Sohbetlerim' Firestore'da kaydedilir

### Gün 9 - Zehra: Final & Yayınlama Süreci
- Splash screen, app icon, uygulama adı eklenir
- Build alınır
- Yayınlama sürecinden bahsedilir

## Proje Yapısı

```
lib/
├── main.dart                      # Uygulama giriş noktası
├── models/
│   └── chat_message.dart          # Gün 7: Mesaj model sınıfı
├── screens/
│   ├── chat_screen.dart           # Chat arayüzü (hazır)
│   ├── login_screen.dart          # Gün 8: Giriş ekranı
│   ├── register_screen.dart       # Gün 8: Kayıt ekranı
│   ├── chat_history_screen.dart   # Gün 8: Sohbet geçmişi
│   └── splash_screen.dart         # Gün 9: Açılış ekranı
└── services/
    ├── chat_service.dart          # Gün 7: Groq API servisi
    ├── auth_service.dart          # Gün 8: Firebase Auth servisi
    └── firestore_service.dart     # Gün 8: Firestore servisi
```

## Kurulum

```bash
# Projeyi klonla
git clone <repo-url>
cd ai_chat_app

# Bağımlılıkları yükle
flutter pub get

# .env dosyasını oluştur
cp .env.example .env
# .env dosyasına kendi Groq API key'ini yaz

# Uygulamayı çalıştır
flutter run
```

## API Key

Groq API key almak için: [console.groq.com](https://console.groq.com)

`.env.example` dosyasını `.env` olarak kopyalayıp kendi key'inizi yazın.
