class SignUpWithEmailAndPasswordFailure {
  final String message;

  const SignUpWithEmailAndPasswordFailure(
      [this.message = 'An Unkwon error occured.']);

  factory SignUpWithEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case 'weak password':
        return const SignUpWithEmailAndPasswordFailure(
            'Please enter a stronger password');
      case 'invalid-email':
        return const SignUpWithEmailAndPasswordFailure(
            'Email is not valid or badly formatted');
      case 'email-already-in_use':
        return const SignUpWithEmailAndPasswordFailure(
            'An account with email already exist');
      case 'operation-not-allowed':
        return const SignUpWithEmailAndPasswordFailure(
            'Operation not allowed please contact support');
      case 'user-disabled':
        return const SignUpWithEmailAndPasswordFailure(
            'The user has been disabled. Please contact Support');
      default:
        return const SignUpWithEmailAndPasswordFailure();
    }
  }
}
