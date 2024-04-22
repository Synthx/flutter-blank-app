enum LoggingLevel {
  info(800),
  warning(900),
  severe(1000);

  final int value;

  const LoggingLevel(this.value);
}
