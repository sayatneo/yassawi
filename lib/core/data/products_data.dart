import '../models/product.dart';

class ProductsData {
  static final List<Product> products = [
    Product(
      id: '1',
      title: 'Математика оқулығы',
      description: 'Өте жақсы жағдайда оқулық. Барлық беттері таза, ешқандай белгілер жоқ. Өткен семестрде пайдаландым.',
      price: 3500,
      rating: 4.8,
      seller: 'Айдос Серікбаев',
      category: 'Оқулықтар',
      imageUrl: 'https://images.unsplash.com/photo-1509228468518-180dd4864904?w=400',
      condition: 'Жаңа секілді',
      location: 'Кампус аймағы',
    ),
    Product(
      id: '2',
      title: 'Физика есептер жинағы',
      description: 'Физика курсына арналған толық есептер жинағы. Барлық тақырыптар қамтылған.',
      price: 2800,
      rating: 4.5,
      seller: 'Назым Қуанова',
      category: 'Оқулықтар',
      imageUrl: 'https://images.unsplash.com/photo-1636466497217-26a8cbeaf0aa?w=400',
      condition: 'Жақсы',
      location: 'Общежитие №2',
    ),
    Product(
      id: '3',
      title: 'Программалау негіздері',
      description: 'C++ және Python тілдеріндегі программалау бойынша оқулық. Мысалдармен және тапсырмалармен.',
      price: 4200,
      rating: 4.9,
      seller: 'Ерлан Тоқтар',
      category: 'Оқулықтар',
      imageUrl: 'https://images.unsplash.com/photo-1515879218367-8466d910aaa4?w=400',
      condition: 'Өте жақсы',
      location: 'Кампус',
    ),
    Product(
      id: '4',
      title: 'Химия зертханалық құрал',
      description: 'Зертханалық жұмыстарға қажетті құралдар жинағы. Толық комплект.',
      price: 5500,
      rating: 4.3,
      seller: 'Гүлнар Әбдірахман',
      category: 'Электроника',
      imageUrl: 'https://images.unsplash.com/photo-1532187863486-abf9dbad1b69?w=400',
      condition: 'Жақсы',
      location: 'Кампус',
    ),
    Product(
      id: '5',
      title: 'Ағылшын тілі сөздігі',
      description: 'Академиялық ағылшын тілі үшін толық сөздік. 50,000+ сөз.',
      price: 1800,
      rating: 4.6,
      seller: 'Асель Нұрланова',
      category: 'Оқулықтар',
      imageUrl: 'https://images.unsplash.com/photo-1544716278-ca5e3f4abd8c?w=400',
      condition: 'Жақсы',
      location: 'Кітапхана жанында',
    ),
    Product(
      id: '6',
      title: 'Калькулятор Casio',
      description: 'Инженерлік калькулятор, математика мен физикаға өте ыңғайлы.',
      price: 6000,
      rating: 4.7,
      seller: 'Бекзат Алмас',
      category: 'Электроника',
      imageUrl: 'https://images.unsplash.com/photo-1611224923853-80b023f02d71?w=400',
      condition: 'Жаңа',
      location: 'Кампус',
    ),
    Product(
      id: '7',
      title: 'Экономика оқулығы',
      description: 'Макро және микроэкономика негіздері. Графиктер мен кестелермен.',
      price: 3200,
      rating: 4.4,
      seller: 'Дана Сәкен',
      category: 'Оқулықтар',
      imageUrl: 'https://images.unsplash.com/photo-1457369804613-52c61a468e7d?w=400',
      condition: 'Жақсы',
      location: 'Общежитие №1',
    ),
    Product(
      id: '8',
      title: 'Ноутбук Dell',
      description: 'Dell Inspiron 15, Intel i5, 8GB RAM, 256GB SSD. Барлық бағдарламалар жақсы жұмыс істейді.',
      price: 85000,
      rating: 4.6,
      seller: 'Нұрлан Бекет',
      category: 'Электроника',
      imageUrl: 'https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?w=400',
      condition: 'Жақсы',
      location: 'Кампус',
    ),
    Product(
      id: '9',
      title: 'Тарих оқулығы',
      description: 'Қазақстан тарихы бойынша толық оқулық. Иллюстрациялармен.',
      price: 2500,
      rating: 4.5,
      seller: 'Айгерім Сапар',
      category: 'Оқулықтар',
      imageUrl: 'https://images.unsplash.com/photo-1461360370896-922624d12aa1?w=400',
      condition: 'Өте жақсы',
      location: 'Кітапхана',
    ),
    Product(
      id: '10',
      title: 'Биология атласы',
      description: 'Адам анатомиясы бойынша толық атлас. Түсті суреттермен.',
      price: 4500,
      rating: 4.8,
      seller: 'Медет Жұмабек',
      category: 'Оқулықтар',
      imageUrl: 'https://images.unsplash.com/photo-1530026405186-ed1f139313f8?w=400',
      condition: 'Жаңа',
      location: 'Кампус',
    ),
    Product(
      id: '11',
      title: 'Спорт формасы',
      description: 'Футбол ойнауға арналған жиынтық форма. Размер: M',
      price: 8000,
      rating: 4.2,
      seller: 'Арман Тұрар',
      category: 'Спорт',
      imageUrl: 'https://images.unsplash.com/photo-1551854838-4f5c8b4b7e2e?w=400',
      condition: 'Жақсы',
      location: 'Спорт кешені',
    ),
    Product(
      id: '12',
      title: 'Философия оқулығы',
      description: 'Батыс және Шығыс философиясы. Классикалық шығармалар.',
      price: 2900,
      rating: 4.3,
      seller: 'Қуаныш Берік',
      category: 'Оқулықтар',
      imageUrl: 'https://images.unsplash.com/photo-1481627834876-b7833e8f5570?w=400',
      condition: 'Жақсы',
      location: 'Общежитие №3',
    ),
  ];

  static List<Product> getFeaturedProducts() {
    // Басты бетке 5 өнімді қайтарамыз
    return products.take(5).toList();
  }

  static List<Product> getAllProducts() {
    return products;
  }

  static List<Product> getProductsByCategory(String category) {
    if (category == 'Барлығы') {
      return products;
    }
    return products.where((p) => p.category == category).toList();
  }

  static Product? getProductById(String id) {
    try {
      return products.firstWhere((p) => p.id == id);
    } catch (e) {
      return null;
    }
  }
}

