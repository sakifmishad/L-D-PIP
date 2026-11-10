void main() {
  // 1. Raw object list
  final List<Object?> rawUsers = [
    {'name': 'Mishad', 'age': 24, 'email': 'mishad@example.com'},
    {'name': 'Rahaman', 'age': 25, 'email': null},
    {'name': null, 'age': null, 'email': null},
  ];

  // 2. Convert into a type-safe Map
  final Map<String, ({
    String name,
    int age,
    String email,
  })> users = {};

  for (var i = 0; i < rawUsers.length; i++) {
    final user = rawUsers[i] as Map<String, Object?>;

    users['user_$i'] = (
      name: user['name'] as String? ?? 'Unknown',
      age: user['age'] as int? ?? 0,
      email: user['email'] as String? ?? 'Not provided',
    );
  }

  // 3. Display converted records
  for (final entry in users.entries) {
    print('${entry.key}: ${entry.value}');
  }
}
