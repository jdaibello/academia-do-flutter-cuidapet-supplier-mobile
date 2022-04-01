import 'package:equatable/equatable.dart';

class RegisterEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class RegisterStepRestartEvent extends RegisterEvent {}

class RegisterStepOneEvent extends RegisterEvent {}

class RegisterStepTwoEvent extends RegisterEvent {
  final String name;
  final String email;

  RegisterStepTwoEvent({required this.name, required this.email});

  @override
  List<Object?> get props => [name, email];
}

class RegisterFinalizeEvent extends RegisterEvent {
  final String password;
  final int category;

  RegisterFinalizeEvent({required this.password, required this.category});

  @override
  List<Object?> get props => [password, category];
}
