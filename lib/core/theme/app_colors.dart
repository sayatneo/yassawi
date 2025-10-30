import 'package:flutter/material.dart';

class AppColors {
  // Корпоративные цвета Yasawi University
  static const Color primary = Color(0xFF0192A3); // Бирюзовый
  static const Color secondary = Color(0xFF0097DC); // Синий
  static const Color accent = Color(0xFFED0019); // Красный

  // Дополнительные цвета
  static const Color background = Color(0xFFF5F7FA);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color textPrimary = Color(0xFF1A1A1A);
  static const Color textSecondary = Color(0xFF6B7280);
  static const Color divider = Color(0xFFE5E7EB);

  // Градиенты
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primary, secondary],
  );

  static const LinearGradient accentGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [accent, Color(0xFFFF4444)],
  );
}
