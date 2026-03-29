import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/user_model.dart';

final userProvider = StateProvider<User>((ref) {
  return User(
    id: '12345',
    name: 'أحمد محمد',
    email: 'ahmed.mohammad@email.com',
    phone: '+966 50 123 4567',
    address: 'الرياض، المملكة العربية السعودية',
    avatarUrl:
        'https://lh3.googleusercontent.com/aida-public/AB6AXuCyW4jTcFu0ObGUJiNXY9YnkdYU2pBupQXiDripUk8tkQodV34ebxXr5FKrgv0InFEAbT0PwKAhmKY5aN51UJwluqCYPBxhxn8gOh2GXg6vU5Y6bo_qkChi1wL4GyW4-fhrUY5ZKFqGZBjGTEkXQNx5Mtq5_NBvnLLi9dQkcHDdDYOScLr_42roqu_t4RPoyKBuHOZcO9r7FXK8EOoUL_GODiWD8aDcd-6KIQvAr1LhHiYYJYP_hdYNDZpPtRA3VZI1O1LhNq4lqXE',
    isVerified: true,
    createdAt: DateTime(2023, 1, 15),
    transactionCount: 24,
    balance: 5250.50,
    servicesCount: 8,
    rating: 4.8,
  );
});
