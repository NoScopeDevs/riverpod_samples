import 'dart:io';

String fixture(String name) => File('test/fixture/$name').readAsStringSync();
