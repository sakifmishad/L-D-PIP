void main() {
  // Safe nullable access: ?. returns null instead of crashing,
  // then ?? supplies a default
  String? username;

  print('Username length: ${username?.length ?? 0}');
}
