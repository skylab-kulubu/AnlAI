import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/chat_screen.dart';

// ============================================================
// AnlAI - AI CHAT UYGULAMASI - BOOTCAMP HAFTA 3
// ============================================================
//
// GÜN 7 - ERSEL: Network & API
//   - JSON Nedir?
//   - Model
//   - Servis Kullanımı (http / dio)
//   - Groq API bağlantısı ile basit chatleşme
//
// GÜN 8 - EMİN: Firebase
//   - Firebase Auth
//   - AI chat uygulamasına auth bağlanır
//   - 'Sohbetlerim' Firestore'da kaydedilir
//
// GÜN 9 - ZEHRA: Final & Yayınlama Süreci
//   - Splash screen, app icon, uygulama adı eklenir
//   - Build alınır
//   - Yayınlama sürecinden bahsedilir
// ============================================================

void main() {
  // GÜN 8 - EMİN: Firebase başlatma eklenecek
  runApp(const AnlAIApp());
}

class AnlAIApp extends StatelessWidget {
  const AnlAIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AnlAI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color(0xFFF8F9FC),
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF6C3FE6),
          secondary: Color(0xFF448AFF),
          surface: Colors.white,
          onSurface: Color(0xFF1A1A2E),
          outline: Color(0xFFE8E8F0),
        ),
        textTheme: GoogleFonts.interTextTheme(
          ThemeData.light().textTheme,
        ),
        useMaterial3: true,
      ),
      // GÜN 8 - EMİN: Auth durumuna göre yönlendirme yapılacak
      // GÜN 9 - ZEHRA: Splash screen eklenecek
      home: const ChatScreen(),
    );
  }
}
