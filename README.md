# University Life - Ахмет Ясауи Университеті

Мобильное приложение для студентов университета Ахмет Ясауи с полным функционалом студенческой жизни.

## 📱 Функционал

### Авторизация
- ✅ Вход в систему
- ✅ Регистрация нового пользователя
- ✅ Интеграция с Google и Apple
- ✅ Восстановление пароля

### Главная страница
- ✅ Истории (Stories)
- ✅ Быстрый доступ к сервисам (расписание, библиотека, столовая и т.д.)
- ✅ Рекомендованные товары из маркетплейса
- ✅ Последние новости

### Маркетплейс
- ✅ Каталог товаров от студентов
- ✅ Категории товаров
- ✅ Поиск и фильтры
- ✅ Добавление объявлений

### ИИ-Ассистент
- ✅ Чат с искусственным интеллектом
- ✅ Помощь по вопросам университета
- ✅ Предложенные вопросы

### Новости
- ✅ Лента новостей университета
- ✅ Категории новостей
- ✅ Избранные новости
- ✅ Поиск по новостям

### Профиль
- ✅ Личная информация
- ✅ Статистика (сабақтар, тапсырмалар, GPA)
- ✅ Расписание
- ✅ Успеваемость
- ✅ Настройки приложения

## 🎨 Дизайн

Приложение использует корпоративные цвета университета Ахмет Ясауи:
- **Основной цвет (Primary)**: #0192A3 (Бирюзовый)
- **Дополнительный цвет (Secondary)**: #0097DC (Синий)
- **Акцентный цвет (Accent)**: #ED0019 (Красный)

## 📁 Структура проекта

```
lib/
├── main.dart                          # Точка входа приложения
├── core/                              # Ядро приложения
│   └── theme/                         # Тема и стили
│       ├── app_colors.dart            # Цвета приложения
│       └── app_theme.dart             # Конфигурация темы
├── features/                          # Функции приложения
│   ├── auth/                          # Авторизация
│   │   └── presentation/
│   │       └── pages/
│   │           ├── splash_screen.dart
│   │           ├── login_screen.dart
│   │           └── register_screen.dart
│   ├── main_navigation/               # Главная навигация
│   │   └── presentation/
│   │       └── pages/
│   │           └── main_screen.dart
│   ├── home/                          # Главная страница
│   │   └── presentation/
│   │       ├── pages/
│   │       │   └── home_page.dart
│   │       └── widgets/
│   │           ├── story_item.dart
│   │           ├── service_item.dart
│   │           ├── product_card.dart
│   │           └── news_card.dart
│   ├── marketplace/                   # Маркетплейс
│   │   └── presentation/
│   │       ├── pages/
│   │       │   └── marketplace_page.dart
│   │       └── widgets/
│   │           ├── category_chip.dart
│   │           └── marketplace_product_card.dart
│   ├── ai_assistant/                  # ИИ-ассистент
│   │   └── presentation/
│   │       ├── pages/
│   │       │   └── ai_assistant_page.dart
│   │       └── widgets/
│   │           ├── message_bubble.dart
│   │           └── suggested_question.dart
│   ├── news/                          # Новости
│   │   └── presentation/
│   │       ├── pages/
│   │       │   └── news_page.dart
│   │       └── widgets/
│   │           ├── featured_news_card.dart
│   │           └── news_list_item.dart
│   └── profile/                       # Профиль
│       └── presentation/
│           ├── pages/
│           │   └── profile_page.dart
│           └── widgets/
│               ├── profile_header.dart
│               ├── profile_stat_card.dart
│               └── profile_menu_item.dart
```

## 🚀 Запуск проекта

### Требования
- Flutter SDK 3.7.0 или выше
- Dart SDK 3.7.0 или выше
- Android Studio / Xcode (для разработки под Android/iOS)

### Установка

1. Клонируйте репозиторий:
```bash
git clone <repository-url>
cd yassawi
```

2. Установите зависимости:
```bash
flutter pub get
```

3. Запустите приложение:
```bash
flutter run
```

### Запуск на разных платформах

```bash
# Android
flutter run -d android

# iOS
flutter run -d ios

# Web
flutter run -d chrome

# Windows
flutter run -d windows

# macOS
flutter run -d macos

# Linux
flutter run -d linux
```

## 🛠 Разработка

### Проверка кода
```bash
flutter analyze
```

### Форматирование кода
```bash
flutter format .
```

### Тесты
```bash
flutter test
```

### Сборка release версии

```bash
# Android APK
flutter build apk --release

# Android App Bundle
flutter build appbundle --release

# iOS
flutter build ios --release

# Web
flutter build web --release
```

## 📝 Архитектура

Проект использует **Feature-First** архитектуру с разделением на слои:
- **Presentation Layer**: UI компоненты (pages, widgets)
- **Domain Layer**: Бизнес-логика (use cases, entities) [будет добавлено]
- **Data Layer**: Работа с данными (repositories, data sources) [будет добавлено]

## 🔮 Будущие улучшения

- [ ] Интеграция с реальным API
- [ ] State management (Bloc/Riverpod)
- [ ] Локальное хранилище (Hive/SQLite)
- [ ] Push-уведомления
- [ ] Аналитика
- [ ] Интеграция с платежными системами
- [ ] Чат между студентами
- [ ] Карта университета
- [ ] QR-код для идентификации

## 📄 Лицензия

© 2025 Ахмет Ясауи Университеті. Все права защищены.

## 👥 Контакты

Для вопросов и предложений обращайтесь:
- Email: support@ayu.edu.kz
- Website: https://ayu.edu.kz
