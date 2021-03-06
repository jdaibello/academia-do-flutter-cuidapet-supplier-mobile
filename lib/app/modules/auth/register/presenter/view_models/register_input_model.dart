import 'package:equatable/equatable.dart';

class RegisterInputModel extends Equatable {
  final String? name;
  final String? email;
  final String? password;
  final int? category;

  const RegisterInputModel({
    this.name,
    this.email,
    this.password,
    this.category,
  });

  @override
  List<Object?> get props => [name, email, password, category];

  RegisterInputModel copyWith({
    String? name,
    String? email,
    String? password,
    int? category,
  }) {
    return RegisterInputModel(
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      category: category ?? this.category,
    );
  }
}
