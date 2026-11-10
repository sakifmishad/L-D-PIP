void main() {
  // Null-aware fallback chain: ?? picks the first non-null value
  String? primaryName;
  String? secondaryName;
  String? fallbackName = 'Guest';

  final displayName =
      primaryName ?? secondaryName ?? fallbackName ?? 'Unknown';

  print('Display name: $displayName');
}
