class User {
  final String id;
  final String name;
  final String email;
  final String phone;
  final String address;
  final String avatarUrl;
  final bool isVerified;
  final DateTime createdAt;
  final int transactionCount;
  final double balance;
  final int servicesCount;
  final double rating;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
    required this.avatarUrl,
    required this.isVerified,
    required this.createdAt,
    required this.transactionCount,
    required this.balance,
    required this.servicesCount,
    required this.rating,
  });

  // Factory constructor for creating a User from JSON
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      address: json['address'] as String,
      avatarUrl: json['avatarUrl'] as String,
      isVerified: json['isVerified'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      transactionCount: json['transactionCount'] as int,
      balance: (json['balance'] as num).toDouble(),
      servicesCount: json['servicesCount'] as int,
      rating: (json['rating'] as num).toDouble(),
    );
  }

  // Convert User to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'address': address,
      'avatarUrl': avatarUrl,
      'isVerified': isVerified,
      'createdAt': createdAt.toIso8601String(),
      'transactionCount': transactionCount,
      'balance': balance,
      'servicesCount': servicesCount,
      'rating': rating,
    };
  }

  // Copy with method for updating specific fields
  User copyWith({
    String? id,
    String? name,
    String? email,
    String? phone,
    String? address,
    String? avatarUrl,
    bool? isVerified,
    DateTime? createdAt,
    int? transactionCount,
    double? balance,
    int? servicesCount,
    double? rating,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      isVerified: isVerified ?? this.isVerified,
      createdAt: createdAt ?? this.createdAt,
      transactionCount: transactionCount ?? this.transactionCount,
      balance: balance ?? this.balance,
      servicesCount: servicesCount ?? this.servicesCount,
      rating: rating ?? this.rating,
    );
  }
}
