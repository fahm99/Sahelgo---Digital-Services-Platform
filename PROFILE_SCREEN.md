# Profile Screen - حسابي

## Overview
تم إنشاء واجهة حسابي (Profile Screen) بنفس نمط التصميم المستخدم في باقي الواجهات.

## Features

### 1. Profile Header
- **Avatar**: صورة المستخدم مع إمكانية تغييرها
- **User Name**: اسم المستخدم
- **Verification Badge**: شارة التحقق الأخضر

### 2. Edit Profile
- زر تعديل البيانات يفعل/يعطل حقول الإدخال
- يمكن تعديل:
  - الاسم الكامل
  - البريد الإلكتروني
  - رقم الهاتف
  - العنوان

### 3. Account Settings
- **تغيير كلمة المرور**: مع dialog منفصل
- **إشعارات**: إدارة تفضيلات الإشعارات
- **الأمان والخصوصية**: إعدادات الأمان

### 4. Account Statistics
عرض إحصائيات الحساب في بطاقات:
- المعاملات: 24
- الرصيد: 5,250
- الخدمات: 8
- التقييم: 4.8

### 5. Logout
زر تسجيل الخروج مع تأكيد قبل الخروج

## Design Pattern

### Colors Used
- **Primary**: #8c4a00 (Brown)
- **Primary Fixed**: #fd8b00 (Orange)
- **Surface**: #f6f6f6 (Light Gray)
- **On Surface**: #2d2f2f (Dark Gray)
- **Outline**: #767777 (Medium Gray)

### Components
- **Profile Fields**: TextField مع Icon وتأثيرات ظل
- **Setting Items**: Container مع Icon ونص وسهم
- **Stat Cards**: بطاقات صغيرة لعرض الإحصائيات
- **Dialogs**: لتغيير كلمة المرور والتأكيد

### Spacing & Sizing
- Border Radius: 16px للحقول، 12px للأزرار
- Padding: 24px للمحتوى الرئيسي
- Icon Size: 24px للأيقونات الرئيسية، 20px للثانوية

## Navigation

### Routes
- Path: `/profile`
- Accessible from:
  - Bottom Navigation Bar (حسابي)
  - Side Drawer (حسابي)

### Navigation Integration
```dart
// From Bottom Nav
context.go('/profile')

// From Drawer
context.go('/profile')

// Logout
context.go('/login')
```

## State Management

### Controllers
- `_nameController`: الاسم الكامل
- `_emailController`: البريد الإلكتروني
- `_phoneController`: رقم الهاتف
- `_addressController`: العنوان

### State
- `_isEditing`: حالة التعديل (true/false)

## Dialogs

### Change Password Dialog
- حقل كلمة المرور الحالية
- حقل كلمة المرور الجديدة
- حقل تأكيد كلمة المرور
- أزرار: إلغاء، حفظ

### Logout Confirmation Dialog
- رسالة تأكيد
- أزرار: إلغاء، تسجيل الخروج

## Responsive Design
- يعمل على جميع أحجام الشاشات
- استخدام `SingleChildScrollView` لتجنب overflow
- استخدام `Expanded` للتوزيع الديناميكي

## Files Modified/Created

### Created
- `lib/app/screens/profile/profile_screen.dart`

### Modified
- `lib/app/router/app_router.dart` - إضافة route `/profile`
- `lib/app/widgets/bottom_nav_bar.dart` - تحديث رابط حسابي
- `lib/app/widgets/side_drawer.dart` - تحديث رابط حسابي

## Testing Checklist

- [ ] التحقق من عرض بيانات المستخدم
- [ ] اختبار تفعيل/تعطيل حقول التعديل
- [ ] اختبار فتح dialog تغيير كلمة المرور
- [ ] اختبار فتح dialog تسجيل الخروج
- [ ] التحقق من الملاحة من Bottom Nav
- [ ] التحقق من الملاحة من Drawer
- [ ] اختبار على أحجام شاشات مختلفة
- [ ] التحقق من عدم وجود overflow

## Future Enhancements

- [ ] إضافة صورة الملف الشخصي من الكاميرا/المعرض
- [ ] حفظ التغييرات في قاعدة البيانات
- [ ] إضافة تحقق من صحة البيانات
- [ ] إضافة رسائل نجاح/خطأ
- [ ] إضافة تحميل البيانات من API
- [ ] إضافة خيارات إضافية (اللغة، الموضوع، إلخ)
