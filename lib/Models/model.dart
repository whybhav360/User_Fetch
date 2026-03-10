class User {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String website;
  final Company company;
  final Address address;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.website,
    required this.company,
    required this.address,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      email: json['email'] ?? '',
      phone: json['phone'] ?? '',
      website: json['website'] ?? '',
      company: Company.fromJson(json['company'] ?? {}),
      address: Address.fromJson(json['address'] ?? {}),
    );
  }
}

class Company {
  final String name;

  Company({required this.name});

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(name: json['name'] ?? '');
  }
}

class Address {
  final String city;

  Address({required this.city});

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(city: json['city'] ?? '');
  }
}
