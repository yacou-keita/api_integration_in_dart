import 'dart:io';

String jsonReader(String fileName) => File("./$fileName").readAsStringSync();
