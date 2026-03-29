import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/currency_model.dart';

final currencyProvider = StateProvider<List<Currency>>((ref) {
  return [
    Currency(
      code: 'USD/SAR',
      name: 'الدولار الأمريكي',
      icon: 'payments',
      buyRate: 3.75,
      sellRate: 3.76,
      changePercent: 0.4,
      isPositive: true,
    ),
    Currency(
      code: 'EUR/SAR',
      name: 'اليورو الأوروبي',
      icon: 'euro',
      buyRate: 4.12,
      sellRate: 4.15,
      changePercent: 0.2,
      isPositive: false,
    ),
    Currency(
      code: 'AED/SAR',
      name: 'الدرهم الإماراتي',
      icon: 'currency_exchange',
      buyRate: 1.02,
      sellRate: 1.03,
      changePercent: 0.0,
      isPositive: true,
    ),
    Currency(
      code: 'GBP/SAR',
      name: 'الجنيه الإسترليني',
      icon: 'currency_pound',
      buyRate: 39.12,
      sellRate: 39.35,
      changePercent: 0.8,
      isPositive: true,
    ),
    Currency(
      code: 'KWD/SAR',
      name: 'الدينار الكويتي',
      icon: 'account_balance_wallet',
      buyRate: 100.20,
      sellRate: 100.55,
      changePercent: 0.1,
      isPositive: false,
    ),
    Currency(
      code: 'SAR/SAR',
      name: 'الريال السعودي',
      icon: 'monetization_on',
      buyRate: 8.22,
      sellRate: 8.25,
      changePercent: 0.0,
      isPositive: true,
    ),
  ];
});
