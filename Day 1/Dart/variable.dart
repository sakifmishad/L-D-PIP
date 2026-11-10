import 'dart:convert';

class User {
  final String name;
  final String? phoneNumber;
  const User({required this.name, this.phoneNumber});
}

late String userName;

void main() {
  // String? name = null;

  //Null Aware
  //print(name?.length);

  //Null check (if)
  //if (name != null) print(name.length);

  //Default Value
  //print(name ?? "Unknown");

  //   final user1 = User(name: "Mishad", phoneNumber: "01765553555");
  //   final user2 = User(name: "Rahaman");

  //   print(user2.phoneNumber);

  //print(name?.length);

  //Null coalescing
  //   String? name;
  //   String displayName = name ?? "Guest";
  //   print(displayName);

  //   String? name;
  //   name ??= "Mishad";
  //   print(name);

  //   userName = "Mishad";
  //   const String baseUrl = 'https://api.example.com';

  //   String? name;
  //   name ??= "Midhad";
  //   print(name);

  (String, int) user = ("Mishad", 18);
  //   print(user.$1);
  //   print(user.$2);

  ({String name, int age}) user2 = (name: "Mishad", age: 20);

  //   print(user2.name);
  //   print(user2.age);

  final List<Object?> rawUser = [
    {'name': 'Mishad', 'age': 24, 'email': 'test@gmail.com'},
    {'name': 'Rahaman', 'age': 25, 'email': null},
    {'name': 'Sakif', 'age': null, 'email': 'sakif@example.com'},
  ];

  final Map<String, ({String name, int age, String email})> users = {};

  for (var i = 0; i < rawUser.length; i++) {
    final user = rawUser[i] as Map<String, Object?>;

    users['user $i'] = (
      name: user['name'] as String? ?? 'Unknow',
      age: user['age'] as int? ?? 0,
      email: user['email'] as String? ?? 'Not Provided',
    );
  }

  //   for (final entry in users.entries) {
  //     print('${entry.key} ${entry.value}');
  //   }

  // print((rawUser[0] as Map)['email']);

  String? primaryName;
  String? secondaryName;
  String? fallbackName = 'Guest';

  final displayName = primaryName ?? secondaryName ?? fallbackName ?? 'Unknown';
  print('Display name: $displayName');

  String? userName;

  print('Username length: ${userName?.length ?? 0}');
  print(userName!.length);
}
