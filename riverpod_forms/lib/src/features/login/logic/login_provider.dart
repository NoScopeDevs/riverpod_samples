import 'package:formz/formz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_forms/src/core/formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.dart';
part 'login_state_notifier.dart';
part 'login_provider.freezed.dart';

final loginNotifierProvider = StateNotifierProvider<LoginNotifier, LoginState>(
  (ref) => LoginNotifier(),
);

final emailProvider = Provider<EmailFormz>(
  (ref) => ref.watch(loginNotifierProvider).email,
);
