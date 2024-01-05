class NumberFormatsUtils {
  static String formatStringWithSpaces(String? value) {
    if (value == null) {return "";}
    final String reverseValue = value.split("").reversed.join();
    String aux = "";
    for (var i = reverseValue.length - 1; i >= 0; i--) {
      aux += reverseValue[i];
      if (i % 3 == 0) {
        aux += " ";
      }
    }
    return aux.trim();
  }
}
