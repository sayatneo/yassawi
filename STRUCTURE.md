# Структура проекта University Life

## Обзор архитектуры

Проект использует **Feature-First** архитектуру, где каждая функция (feature) инкапсулирована в отдельной папке со своими презентационными компонентами.

```
yassawi/
│
├── lib/                                 # Основная папка с кодом
│   │
│   ├── main.dart                        # Точка входа приложения
│   │
│   ├── core/                            # Ядро приложения (общие компоненты)
│   │   └── theme/
│   │       ├── app_colors.dart          # Корпоративные цвета Yasawi
│   │       └── app_theme.dart           # Конфигурация Material Theme
│   │
│   └── features/                        # Функции приложения
│       │
│       ├── auth/                        # 🔐 Авторизация
│       │   └── presentation/
│       │       └── pages/
│       │           ├── splash_screen.dart      # Заставка с анимацией
│       │           ├── login_screen.dart       # Экран входа
│       │           └── register_screen.dart    # Экран регистрации
│       │
│       ├── main_navigation/             # 🧭 Главная навигация
│       │   └── presentation/
│       │       └── pages/
│       │           └── main_screen.dart        # Bottom Navigation Bar
│       │
│       ├── home/                        # 🏠 Главная страница
│       │   └── presentation/
│       │       ├── pages/
│       │       │   └── home_page.dart          # Главный экран
│       │       └── widgets/
│       │           ├── story_item.dart         # Виджет истории
│       │           ├── service_item.dart       # Виджет сервиса
│       │           ├── product_card.dart       # Карточка товара
│       │           └── news_card.dart          # Карточка новости
│       │
│       ├── marketplace/                 # 🛒 Маркетплейс
│       │   └── presentation/
│       │       ├── pages/
│       │       │   └── marketplace_page.dart   # Страница маркетплейса
│       │       └── widgets/
│       │           ├── category_chip.dart                  # Чип категории
│       │           └── marketplace_product_card.dart       # Карточка товара
│       │
│       ├── ai_assistant/                # 🤖 ИИ-Ассистент
│       │   └── presentation/
│       │       ├── pages/
│       │       │   └── ai_assistant_page.dart  # Чат с ИИ
│       │       └── widgets/
│       │           ├── message_bubble.dart     # Пузырь сообщения
│       │           └── suggested_question.dart # Предложенный вопрос
│       │
│       ├── news/                        # 📰 Новости
│       │   └── presentation/
│       │       ├── pages/
│       │       │   └── news_page.dart          # Страница новостей
│       │       └── widgets/
│       │           ├── featured_news_card.dart # Избранная новость
│       │           └── news_list_item.dart     # Элемент списка новостей
│       │
│       └── profile/                     # 👤 Профиль
│           └── presentation/
│               ├── pages/
│               │   └── profile_page.dart       # Страница профиля
│               └── widgets/
│                   ├── profile_header.dart     # Заголовок профиля
│                   ├── profile_stat_card.dart  # Карточка статистики
│                   └── profile_menu_item.dart  # Элемент меню профиля
│
├── android/                             # Android конфигурация
├── ios/                                 # iOS конфигурация
├── web/                                 # Web конфигурация
├── windows/                             # Windows конфигурация
├── macos/                               # macOS конфигурация
├── linux/                               # Linux конфигурация
│
├── test/                                # Тесты
│   └── widget_test.dart
│
├── pubspec.yaml                         # Зависимости Flutter
├── analysis_options.yaml                # Настройки анализатора
├── README.md                            # Документация проекта
└── STRUCTURE.md                         # Этот файл
```

## Описание функций (Features)

### 1. 🔐 Авторизация (auth)
**Файлы**: `splash_screen.dart`, `login_screen.dart`, `register_screen.dart`

Функционал:
- Анимированная заставка при запуске
- Вход с email и паролем
- Регистрация новых пользователей
- Интеграция с Google и Apple (UI готов)
- Валидация форм

### 2. 🏠 Главная страница (home)
**Файл**: `home_page.dart`

Компоненты:
- **Stories (Истории)**: Горизонтальный список историй, как в Instagram
- **Services (Сервисы)**: Сетка быстрого доступа к функциям университета
  - Расписание
  - Библиотека
  - Задания
  - Клубы
  - Столовая
  - Транспорт
  - События
- **Marketplace Preview**: Превью товаров из маркетплейса
- **News Preview**: Последние новости университета

### 3. 🛒 Маркетплейс (marketplace)
**Файл**: `marketplace_page.dart`

Функционал:
- Каталог товаров в виде сетки
- Категории товаров (Оқулықтар, Электроника, Киім, Спорт)
- Поиск товаров
- Фильтры
- FAB для добавления объявления

### 4. 🤖 ИИ-Ассистент (ai_assistant)
**Файл**: `ai_assistant_page.dart`

Функционал:
- Чат интерфейс
- Предложенные вопросы
- История сообщений
- Пузыри сообщений (user/assistant)
- Индикатор "онлайн"

### 5. 📰 Новости (news)
**Файл**: `news_page.dart`

Функционал:
- Вкладки категорий (Барлығы, Оқиғалар, Білім, Спорт)
- Featured новости (горизонтальный список)
- Список новостей с картинками
- Количество просмотров
- Поиск и закладки

### 6. 👤 Профиль (profile)
**Файл**: `profile_page.dart`

Функционал:
- Заголовок с аватаром и именем
- Статистика (Сабақтар, Тапсырмалар, GPA)
- Меню настроек:
  - Редактирование профиля
  - Расписание
  - Успеваемость
  - Сохраненные
  - Мои объявления
  - Уведомления
  - Безопасность
  - Язык
  - Темная тема
  - Помощь
  - О приложении
  - Выход

## Цветовая схема

```dart
// Корпоративные цвета Ахмет Ясауи Университеті
primary:    #0192A3  // Бирюзовый
secondary:  #0097DC  // Синий
accent:     #ED0019  // Красный

// Дополнительные
background: #F5F7FA  // Светло-серый фон
surface:    #FFFFFF  // Белый для карточек
```

## Навигация

```
SplashScreen → LoginScreen → MainScreen
                    ↓
              RegisterScreen

MainScreen (Bottom Navigation):
├── HomePage          (index: 0)
├── MarketplacePage   (index: 1)
├── AIAssistantPage   (index: 2)
├── NewsPage          (index: 3)
└── ProfilePage       (index: 4)
```

## Следующие шаги разработки

1. **Интеграция API**
   - Подключение к backend
   - Модели данных (Domain Layer)
   - Репозитории (Data Layer)

2. **State Management**
   - BLoC или Riverpod
   - Управление состоянием приложения

3. **Локальное хранилище**
   - Hive или SQLite
   - Кэширование данных

4. **Дополнительные функции**
   - Push-уведомления
   - Аналитика
   - Платежные системы

5. **Тестирование**
   - Unit тесты
   - Widget тесты
   - Integration тесты

