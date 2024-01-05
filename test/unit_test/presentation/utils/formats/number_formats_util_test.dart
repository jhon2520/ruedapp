import 'package:flutter_test/flutter_test.dart';
import 'package:ruedapp/presentation/utils/index.dart';

void main() {

  group("String number to decimal position format", () { 

    const String number = "13452";

    test("Number should be returned with spaces", (){
      final String utilNumber = NumberFormatsUtils.formatStringWithSpaces(number);
      expect(utilNumber, "13 452");
    });

    test("method should return empty string when null value is given", () {
      final String utilNumber = NumberFormatsUtils.formatStringWithSpaces(null);
      expect(utilNumber, "");
    });

  });

}