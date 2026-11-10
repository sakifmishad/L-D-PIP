void main() {
  // Runtime crash experiment: ! tells Dart "trust me, this isn't null".
  // It is null here, so this throws at runtime.
  String? username;

  print(username!.length);
}
