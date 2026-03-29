import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/flight_model.dart';

final flightProvider = StateProvider<List<Flight>>((ref) {
  return [
    Flight(
      flightNumber: 'SR 452',
      airline: 'الخطوط السعودية',
      airlineLogoUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuC1btUSVUadIGr0nctTKgWZVLWYQs_DIUsfMc8jJ_Q9E_KugXulsEIMeKu40yTvZjTtOQsGBrsxInrhWMOLwTkyTd7BgANgGvbTN4tcfkHgfm1KrrKubuJaw69CYNCKS2on6sv_s9bB3FChidGiB-eL_OSEaOnPagY-PS-jfgYxzCoiOeMQxAzmriuHAK21NkGK90_FYp8ShRdvfxNf9dVQ1dNVzFcefY_nWDJ6fFeRYK_sd3rc9pjs9gJUD9UiTkvEMI9lQTPrNgo',
      departure: 'الخرطوم',
      departureCode: 'KRT',
      arrival: 'دبي',
      arrivalCode: 'DXB',
      duration: '4h 30m',
      status: 'في الموعد',
      arrivalTime: '04:30 PM',
      gate: 'B12',
      isDirect: true,
    ),
    Flight(
      flightNumber: 'EK 731',
      airline: 'طيران الإمارات',
      airlineLogoUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuBexzOm-2NKxDtWYa14wph3_UOkrrwu9YbOt6Rcura3qLQlV7DYohhjOcKvCLtrxbYL0o5QEvgwzREvHQ5Mo_nPrhx0cCCcOcXNECSx-tGWWEENV4_WBvsfL65NkHrnpuoMqRexNBdbgE63IxupmviOgBRNTzrAlLuCc4M8Sa0Zp-zD4gf8M5ftC2zyRzM7lcGQFksN0x2eUmvj_yqURVpCoBt0Ju1ArjrBY48K__amrPrh6BkQjfcp7OpucgnBDx4XKnuBFyQSHLo',
      departure: 'جدة',
      departureCode: 'JED',
      arrival: 'القاهرة',
      arrivalCode: 'CAI',
      duration: '2h 15m',
      status: 'متأخرة 20د',
      arrivalTime: '09:15 PM',
      gate: 'A05',
      isDirect: true,
    ),
    Flight(
      flightNumber: 'QR 118',
      airline: 'الخطوط القطرية',
      airlineLogoUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuBPQdGNeyb7iARiWQhRY1PVSJ_yNHEUqVsFxHGNc6vuN0lHvoHgFEeN37brHkifs4gsI4_7qgdfqbinS_E-Tc4Q1Oy618ny9TwID8T9RFS7rfyYz3_0cnOpJDQXu3_ABG27KLFtMuOVqoTWBGy1TBTDri99p5nEmo4g4ZNaPG_JH0ASQj2AFXGFtTGPB5BPBdFkPTnHyjsL3TJY5j0PjBo1HKYUNSuc8gZBGxnOGE0NWIttiYlMz-gTeaVfL0bzG3MtSt09ZgVsJws',
      departure: 'الدوحة',
      departureCode: 'DOH',
      arrival: 'الخرطوم',
      arrivalCode: 'KRT',
      duration: '1h 45m',
      status: 'هبطت',
      arrivalTime: '02:20 PM',
      gate: 'C21',
      isDirect: true,
    ),
  ];
});

final flightFilterProvider = StateProvider<String>((ref) => 'الكل');
