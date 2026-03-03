// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Language`
  String get Language {
    return Intl.message('Language', name: 'Language', desc: '', args: []);
  }

  /// `Sign in`
  String get signin {
    return Intl.message('Sign in', name: 'signin', desc: '', args: []);
  }

  /// `Hello Ali!`
  String get Hello {
    return Intl.message('Hello Ali!', name: 'Hello', desc: '', args: []);
  }

  /// `Development Team`
  String get Development {
    return Intl.message(
      'Development Team',
      name: 'Development',
      desc: '',
      args: [],
    );
  }

  /// `Check-in time`
  String get Checkin {
    return Intl.message('Check-in time', name: 'Checkin', desc: '', args: []);
  }

  /// `Check-out time`
  String get Checkout {
    return Intl.message('Check-out time', name: 'Checkout', desc: '', args: []);
  }

  /// `on-time`
  String get on_time {
    return Intl.message('on-time', name: 'on_time', desc: '', args: []);
  }

  /// `Pending`
  String get pending {
    return Intl.message('Pending', name: 'pending', desc: '', args: []);
  }

  /// `Check Out`
  String get checkout {
    return Intl.message('Check Out', name: 'checkout', desc: '', args: []);
  }

  /// `Regular Balance`
  String get Regular {
    return Intl.message('Regular Balance', name: 'Regular', desc: '', args: []);
  }

  /// `Emergency Balance`
  String get Emergency {
    return Intl.message(
      'Emergency Balance',
      name: 'Emergency',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get Home {
    return Intl.message('Home', name: 'Home', desc: '', args: []);
  }

  /// `Announcemnts`
  String get announcemnts {
    return Intl.message(
      'Announcemnts',
      name: 'announcemnts',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Confirm`
  String get Confirm {
    return Intl.message('Confirm', name: 'Confirm', desc: '', args: []);
  }

  /// `Out of Boundaries!`
  String get outbounders {
    return Intl.message(
      'Out of Boundaries!',
      name: 'outbounders',
      desc: '',
      args: [],
    );
  }

  /// `Add justification for your current location`
  String get currentlocationtext {
    return Intl.message(
      'Add justification for your current location',
      name: 'currentlocationtext',
      desc: '',
      args: [],
    );
  }

  /// `Incomplete working hours !`
  String get alert {
    return Intl.message(
      'Incomplete working hours !',
      name: 'alert',
      desc: '',
      args: [],
    );
  }

  /// `Write your justification here ... `
  String get justification {
    return Intl.message(
      'Write your justification here ... ',
      name: 'justification',
      desc: '',
      args: [],
    );
  }

  /// `Early Checkout!`
  String get Early {
    return Intl.message('Early Checkout!', name: 'Early', desc: '', args: []);
  }

  /// `Incomplete working hours !`
  String get alerthours {
    return Intl.message(
      'Incomplete working hours !',
      name: 'alerthours',
      desc: '',
      args: [],
    );
  }

  /// `Not yet`
  String get Notyet {
    return Intl.message('Not yet', name: 'Notyet', desc: '', args: []);
  }

  /// `Days`
  String get day {
    return Intl.message('Days', name: 'day', desc: '', args: []);
  }

  /// `Asma Hamrawy got promoted to UX Team Lead!`
  String get annhead {
    return Intl.message(
      'Asma Hamrawy got promoted to UX Team Lead!',
      name: 'annhead',
      desc: '',
      args: [],
    );
  }

  /// `Congratulate Asma Hamrawy for her recent promotion `
  String get annmead {
    return Intl.message(
      'Congratulate Asma Hamrawy for her recent promotion ',
      name: 'annmead',
      desc: '',
      args: [],
    );
  }

  /// `17 Monday, February 2025`
  String get anndate {
    return Intl.message(
      '17 Monday, February 2025',
      name: 'anndate',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
