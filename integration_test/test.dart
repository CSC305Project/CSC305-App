import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:integration_test/integration_test.dart';
import 'package:c_s_c305_project/flutter_flow/flutter_flow_icon_button.dart';
import 'package:c_s_c305_project/flutter_flow/flutter_flow_widgets.dart';
import 'package:c_s_c305_project/flutter_flow/flutter_flow_theme.dart';
import 'package:c_s_c305_project/index.dart';
import 'package:c_s_c305_project/main.dart';
import 'package:c_s_c305_project/flutter_flow/flutter_flow_util.dart';

import 'package:provider/provider.dart';
import 'package:c_s_c305_project/backend/firebase/firebase_config.dart';
import 'package:c_s_c305_project/auth/firebase_auth/auth_util.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await initFirebase();
  });

  setUp(() async {
    await authManager.signOut();
    FFAppState.reset();
    final appState = FFAppState();
    await appState.initializePersistedState();
  });

  testWidgets('testAccountCreation', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: const MyApp(),
    ));
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.tap(find.byKey(const ValueKey('Row_e7hm')));
    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.tap(find.byKey(const ValueKey('emailAddress_Create_4pzh')));
    await tester.enterText(
        find.byKey(const ValueKey('emailAddress_Create_4pzh')),
        'tjmarcello23@gmail.com');
    await tester.tap(find.byKey(const ValueKey('password_Create_owkg')));
    await tester.enterText(
        find.byKey(const ValueKey('password_Create_owkg')), 'hello');
    await tester.tap(find.byKey(const ValueKey('Button_sesu')));
    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    expect(find.text('Profile'), findsWidgets);
  });

  testWidgets('testUserLogin', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(
        entryPage: HomeWidget(),
      ),
    ));
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.tap(find.byKey(const ValueKey('Row_e7hm')));
    await tester.tap(find.byKey(const ValueKey('Tab_jakp')));
    await tester.pump(kDoubleTapMinTime);
    await tester.tap(find.byKey(const ValueKey('Tab_jakp')));
    await tester.tap(find.byKey(const ValueKey('emailAddress_Login_tpqe')));
    await tester.enterText(
        find.byKey(const ValueKey('emailAddress_Login_tpqe')),
        'noah_vario@uri.edu');
    await tester.tap(find.byKey(const ValueKey('password_Login_bmp4')));
    await tester.enterText(
        find.byKey(const ValueKey('password_Login_bmp4')), 'password');
    await tester.tap(find.byKey(const ValueKey('Button_mxo4')));
    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    expect(find.byKey(const ValueKey('Card_k7rc')), findsOneWidget);
  });

  testWidgets('testGoals', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: const MyApp(),
    ));
    await GoogleFonts.pendingFonts();

    await tester.tap(find.byKey(const ValueKey('Button_vkpa')));
    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.enterText(find.text('Goal'), 'Save money/less spending');
    await tester.tap(find.text('Done'));
    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.tap(find.byKey(const ValueKey('Button_z99z')));
    await tester.tap(find.text('Completed'));
    await tester.tap(find.text('Not Started'));
    await tester.tap(find.byKey(const ValueKey('IconButton_3pea')));
    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.enterText(find.text('Spend less'), 'Save more/spend less');
    await tester.tap(find.text('Update'));
    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.tap(find.byKey(const ValueKey('IconButton_qogd')));
  });

  testWidgets('AI Agent', (WidgetTester tester) async {
    _overrideOnError();
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: 'ronan@gmail.com', password: 'Temper@23');
    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(
        entryPage: AIinsightsWidget(),
      ),
    ));
    await GoogleFonts.pendingFonts();

    await tester.enterText(find.byKey(const ValueKey('TextField_3z5q')),
        'Would buying a laptop be smart with rent due?');
    await tester.tap(find.byKey(const ValueKey('Button_923q')));
    await tester.pumpAndSettle(
      const Duration(milliseconds: 5000),
      EnginePhase.sendSemanticsUpdate,
      const Duration(milliseconds: 10000),
    );
    expect(find.byKey(const ValueKey('Column_09u7')), findsOneWidget);
  });
}

// There are certain types of errors that can happen during tests but
// should not break the test.
void _overrideOnError() {
  final originalOnError = FlutterError.onError!;
  FlutterError.onError = (errorDetails) {
    if (_shouldIgnoreError(errorDetails.toString())) {
      return;
    }
    originalOnError(errorDetails);
  };
}

bool _shouldIgnoreError(String error) {
  // It can fail to decode some SVGs - this should not break the test.
  if (error.contains('ImageCodecException')) {
    return true;
  }
  // Overflows happen all over the place,
  // but they should not break tests.
  if (error.contains('overflowed by')) {
    return true;
  }
  // Sometimes some images fail to load, it generally does not break the test.
  if (error.contains('No host specified in URI') ||
      error.contains('EXCEPTION CAUGHT BY IMAGE RESOURCE SERVICE')) {
    return true;
  }
  // These errors should be avoided, but they should not break the test.
  if (error.contains('setState() called after dispose()')) {
    return true;
  }

  return false;
}
