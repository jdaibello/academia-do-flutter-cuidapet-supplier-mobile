enum AuthStatus {
  empty,
  logged,
  unlogged,
}

class AuthHomeState {
  final AuthStatus userLoggedStatus;

  AuthHomeState({required this.userLoggedStatus});

  factory AuthHomeState.initial() =>
      AuthHomeState(userLoggedStatus: AuthStatus.empty);
}
