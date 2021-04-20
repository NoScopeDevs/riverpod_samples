import 'package:flutter/material.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:riverpod_forms/src/features/login/views/login_page.dart';

class RiverpodForms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', "US"),
        const Locale('es', "ES"),
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: I18n(
        child: LoginPage(),
      ),
    );
  }
}
