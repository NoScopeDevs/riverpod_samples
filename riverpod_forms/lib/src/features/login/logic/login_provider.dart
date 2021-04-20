import 'package:equatable/equatable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';

import '../../../core/forms/forms.dart';
export 'package:formz/formz.dart';
part 'login_state.dart';
part 'login_state_notifier.dart';

// import 'package:freezed_annotation/freezed_annotation.dart';
// part 'login_provider.freezed.dart';

/// Provider to use the LoginStateNotifier
final loginNotifierProvider = StateNotifierProvider<LoginNotifier, LoginState>(
  (ref) => LoginNotifier(),
);

final emailProvider = Provider<Email>(
  (ref) => ref.watch(loginNotifierProvider).email,
);
