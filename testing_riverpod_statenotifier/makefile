testcoverage:
	flutter test --no-pub --coverage --test-randomize-ordering-seed random
	lcov --remove coverage/lcov.info '*.g.dart' '*.freezed.dart' -o coverage/new_lcov.info
	genhtml ./coverage/new_lcov.info -o coverage
	open coverage/index.html