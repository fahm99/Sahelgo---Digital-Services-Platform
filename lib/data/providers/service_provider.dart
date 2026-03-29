import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/service_model.dart';

final serviceProvider = StateProvider<List<Service>>((ref) {
  return [
    Service(
      title: 'الخدمات العامة',
      description: 'تراخيص، وثائق، وطلبات حكومية',
      icon: 'account_balance',
    ),
    Service(
      title: 'شؤون الوافدين',
      description: 'الإقامة، التأشيرات، وخدمات الكفالة',
      icon: 'travel_explore',
    ),
    Service(
      title: 'التعليم العالي',
      description: 'معادلة الشهادات والمنح الدراسية',
      icon: 'school',
    ),
    Service(
      title: 'استعلامات المطار',
      description: 'رحلات الطيران والخدمات اللوجستية',
      icon: 'flight_takeoff',
    ),
  ];
});
