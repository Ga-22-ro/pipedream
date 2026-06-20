enum UserRole { superAdmin, admin, representative }

class Permissions {
  static bool canManageUsers(UserRole role) => role == UserRole.superAdmin;
  static bool canManageRepresentatives(UserRole role) => role == UserRole.superAdmin || role == UserRole.admin;
  static bool canViewAllRecords(UserRole role) => role != UserRole.representative;
}
