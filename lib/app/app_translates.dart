enum AppTranslates {
  appTitle('YOMMYANI APP');

  final String defaultText;
  const AppTranslates(this.defaultText);

  @override
  String toString() {
    return defaultText;
  }
}
