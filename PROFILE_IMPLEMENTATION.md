# Profile Screen Implementation - تطبيق واجهة حسابي

## 📋 Overview

تم تطوير واجهة حسابي (Profile Screen) بالكامل مع جميع الميزات والتكاملات اللازمة.

---

## 🎨 Design Features

### 1. Profile Header Section
```
┌─────────────────────────────────┐
│                                 │
│         [Avatar Image]          │
│         📷 (Camera Icon)        │
│                                 │
│      أحمد محمد                  │
│      ✓ حساب موثق               │
│                                 │
└─────────────────────────────────┘
```

**Components:**
- صورة المستخدم (120x120px)
- أيقونة الكاميرا لتغيير الصورة
- اسم المستخدم
- شارة التحقق الأخضر

### 2. Edit Profile Section
- زر تعديل البيانات يفعل/يعطل الحقول
- حقول قابلة للتعديل:
  - الاسم الكامل
  - البريد الإلكتروني
  - رقم الهاتف
  - العنوان (متعدد الأسطر)

### 3. Account Settings
ثلاثة خيارات رئيسية:
- 🔒 تغيير كلمة المرور
- 🔔 إشعارات
- 🛡️ الأمان والخصوصية

### 4. Account Statistics
عرض 4 إحصائيات في بطاقات:
```
┌──────────────┬──────────────┐
│ المعاملات    │ الرصيد       │
│ 24           │ 5,250        │
├──────────────┼──────────────┤
│ الخدمات      │ التقييم      │
│ 8            │ 4.8          │
└──────────────┴──────────────┘
```

### 5. Logout Section
- زر تسجيل الخروج بلون أحمر
- تأكيد قبل الخروج

---

## 📁 Files Created

### 1. Profile Screen
**File:** `lib/app/screens/profile/profile_screen.dart`

**Key Classes:**
- `ProfileScreen`: StatefulWidget رئيسي
- `_ProfileScreenState`: حالة الشاشة

**Methods:**
- `_buildProfileField()`: بناء حقول الإدخال
- `_buildSettingItem()`: بناء عناصر الإعدادات
- `_buildStatCard()`: بناء بطاقات الإحصائيات
- `_showChangePasswordDialog()`: عرض dialog تغيير كلمة المرور
- `_showLogoutDialog()`: عرض dialog تأكيد الخروج

### 2. User Model
**File:** `lib/data/models/user_model.dart`

**Properties:**
```dart
- id: String
- name: String
- email: String
- phone: String
- address: String
- avatarUrl: String
- isVerified: bool
- createdAt: DateTime
- transactionCount: int
- balance: double
- servicesCount: int
- rating: double
```

**Methods:**
- `fromJson()`: إنشاء من JSON
- `toJson()`: تحويل إلى JSON
- `copyWith()`: نسخ مع تحديثات

### 3. User Provider
**File:** `lib/data/providers/user_provider.dart`

```dart
final userProvider = StateProvider<User>((ref) {
  // بيانات المستخدم الافتراضية
});
```

---

## 📁 Files Modified

### 1. App Router
**File:** `lib/app/router/app_router.dart`

**Changes:**
```dart
// إضافة import
import '../screens/profile/profile_screen.dart';

// إضافة route
GoRoute(
  path: '/profile',
  builder: (context, state) => const ProfileScreen(),
),
```

### 2. Bottom Navigation Bar
**File:** `lib/app/widgets/bottom_nav_bar.dart`

**Changes:**
```dart
// تحديث رابط حسابي
_NavItem(
  icon: Icons.person,
  label: 'حسابي',
  isActive: currentIndex == 2,
  onTap: () => context.go('/profile'),
),
```

### 3. Side Drawer
**File:** `lib/app/widgets/side_drawer.dart`

**Changes:**
```dart
// تحديث رابط حسابي في الـ drawer
_DrawerItem(
  icon: Icons.account_circle,
  label: 'حسابي',
  isActive: true,
  onTap: () {
    Navigator.pop(context);
    context.go('/profile');
  },
),
```

---

## 🎯 Design Consistency

### Colors
- **Primary**: #8c4a00 (Brown)
- **Primary Fixed**: #fd8b00 (Orange)
- **Error**: #b02500 (Red)
- **Surface**: #f6f6f6 (Light Gray)
- **On Surface**: #2d2f2f (Dark Gray)
- **Outline**: #767777 (Medium Gray)

### Typography
- **Headers**: Tajawal Bold, 18-28px
- **Body**: Tajawal Regular, 12-16px
- **Labels**: Tajawal Medium, 10-14px

### Spacing
- **Page Padding**: 24px
- **Section Gap**: 32px
- **Item Gap**: 12-16px
- **Border Radius**: 16px (fields), 12px (buttons)

### Shadows
```dart
BoxShadow(
  color: Colors.black.withOpacity(0.04),
  blurRadius: 8,
  offset: const Offset(0, 2),
)
```

---

## 🔄 Navigation Flow

```
Home Screen
    ↓
Bottom Nav (حسابي) → Profile Screen
    ↓
Side Drawer (حسابي) → Profile Screen
    ↓
Profile Screen
    ├─ تعديل البيانات
    ├─ تغيير كلمة المرور (Dialog)
    ├─ إشعارات
    ├─ الأمان والخصوصية
    └─ تسجيل الخروج (Dialog) → Login Screen
```

---

## 💾 State Management

### Controllers
```dart
_nameController = TextEditingController(text: 'أحمد محمد');
_emailController = TextEditingController(text: 'ahmed.mohammad@email.com');
_phoneController = TextEditingController(text: '+966 50 123 4567');
_addressController = TextEditingController(text: 'الرياض، المملكة العربية السعودية');
```

### State Variables
```dart
bool _isEditing = false; // حالة التعديل
```

---

## 🧪 Testing Checklist

### UI Tests
- [ ] عرض صورة المستخدم بشكل صحيح
- [ ] عرض بيانات المستخدم بشكل صحيح
- [ ] شارة التحقق تظهر بشكل صحيح
- [ ] الأيقونات تظهر بشكل صحيح

### Functionality Tests
- [ ] زر التعديل يفعل/يعطل الحقول
- [ ] يمكن تعديل البيانات
- [ ] dialog تغيير كلمة المرور يفتح بشكل صحيح
- [ ] dialog تأكيد الخروج يفتح بشكل صحيح
- [ ] الخروج ينقل إلى صفحة تسجيل الدخول

### Navigation Tests
- [ ] الملاحة من Bottom Nav تعمل
- [ ] الملاحة من Drawer تعمل
- [ ] الخروج ينقل إلى الصفحة الصحيحة
- [ ] الرجوع يعمل بشكل صحيح

### Responsive Tests
- [ ] لا يوجد overflow على شاشات صغيرة
- [ ] التخطيط يتكيف مع أحجام مختلفة
- [ ] النصوص الطويلة تُعرض بشكل صحيح

---

## 🚀 Future Enhancements

### Phase 1
- [ ] تحميل الصورة من الكاميرا/المعرض
- [ ] حفظ التغييرات في قاعدة البيانات
- [ ] تحقق من صحة البيانات

### Phase 2
- [ ] رسائل نجاح/خطأ
- [ ] تحميل البيانات من API
- [ ] معالجة الأخطاء

### Phase 3
- [ ] إضافة خيارات إضافية (اللغة، الموضوع)
- [ ] سجل النشاط
- [ ] الأجهزة المتصلة

---

## 📝 Usage Example

```dart
// الملاحة إلى صفحة الملف الشخصي
context.go('/profile');

// الوصول إلى بيانات المستخدم
final user = ref.watch(userProvider);

// تحديث بيانات المستخدم
ref.read(userProvider.notifier).state = updatedUser;
```

---

## 🔗 Integration Points

### With Bottom Navigation
- يتم تحديث `currentIndex` إلى 2 عند الوصول إلى Profile
- يتم عرض الأيقونة النشطة بلون مختلف

### With Side Drawer
- يتم إغلاق الـ drawer عند الملاحة
- يتم تحديث حالة العنصر النشط

### With App Router
- يتم التعامل مع الملاحة عبر GoRouter
- يتم دعم الملاحة العميقة (Deep Linking)

---

## 📊 Performance Considerations

- استخدام `SingleChildScrollView` لتجنب overflow
- استخدام `const` للـ widgets الثابتة
- استخدام `Expanded` للتوزيع الديناميكي
- تحرير الـ controllers في `dispose()`

---

## 🎓 Learning Resources

- Flutter State Management: Riverpod
- Material Design 3: Colors & Typography
- Flutter Navigation: GoRouter
- Flutter Forms: TextField & Validation

---

## 📞 Support

للمزيد من المعلومات أو الدعم، يرجى التواصل مع فريق التطوير.
