class UserEntity {
  const UserEntity({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.avatarUrl,
  });

  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final String avatarUrl;
}
