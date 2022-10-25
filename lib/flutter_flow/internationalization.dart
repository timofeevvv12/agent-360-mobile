import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['ru', 'en'];

  String get languageCode => locale.toString();
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? ruText = '',
    String? enText = '',
  }) =>
      [ruText, enText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.toString());

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // LogIn
  {
    '2fpofwx9': {
      'ru': 'Login',
      'en': 'Login',
    },
    'uw1c1w2n': {
      'ru': 'Email',
      'en': 'Email',
    },
    'o5rhi0a3': {
      'ru': 'Enter email',
      'en': 'Enter email',
    },
    '0gpyu396': {
      'ru': 'Password',
      'en': 'Password',
    },
    '6dhvjy86': {
      'ru': 'Enter password',
      'en': 'Enter password',
    },
    '4sasrbum': {
      'ru': 'Login',
      'en': 'Login',
    },
    'c7zxko7n': {
      'ru': 'Don\'t have an account?',
      'en': 'Don\'t have an account?',
    },
    't5vogcpz': {
      'ru': ' Register',
      'en': 'Register',
    },
    'or5kk52l': {
      'ru': 'Home',
      'en': 'Home',
    },
  },
  // SignUp
  {
    'j5f6aoao': {
      'ru': 'Registration',
      'en': 'Registration',
    },
    'ko6lw4o5': {
      'ru': 'Name',
      'en': 'Name',
    },
    'a43tvls4': {
      'ru': 'Enter name',
      'en': 'Enter name',
    },
    '5tv5efzd': {
      'ru': 'Email',
      'en': 'Email',
    },
    '22mylqfn': {
      'ru': 'Enter email',
      'en': 'Enter email',
    },
    'b5tlvv1x': {
      'ru': 'Password',
      'en': 'Password',
    },
    'i3kh6i27': {
      'ru': 'Enter password',
      'en': 'Enter password',
    },
    'zfymmpte': {
      'ru': 'Repeat password',
      'en': 'Password',
    },
    '53zc9m99': {
      'ru': 'Repeat password',
      'en': 'Enter password',
    },
    '9mbdk2pt': {
      'ru': 'Register',
      'en': 'Register',
    },
    'o4altpwi': {
      'ru': 'Already have an account?',
      'en': 'Already have an account?',
    },
    'clyar27l': {
      'ru': ' Login',
      'en': 'Login',
    },
    '7i7vbiif': {
      'ru': 'Home',
      'en': 'Home',
    },
  },
  // Home
  {
    '9u55wg3c': {
      'ru': 'Нет объектов',
      'en': 'No objects',
    },
    'jufwmtth': {
      'ru': 'Favorites',
      'en': 'Favorites',
    },
    'cst35ncc': {
      'ru': 'Add object',
      'en': 'Add object',
    },
    'rhl8ddy7': {
      'ru': 'Cloud',
      'en': 'Cloud',
    },
    'j05zmx0i': {
      'ru': 'Objects',
      'en': 'Objects',
    },
    'l1qfszun': {
      'ru': 'Меню',
      'en': 'Menu',
    },
    'p792tdsd': {
      'ru': 'agent360.vortexo.ru',
      'en': 'AGENT360.COM',
    },
    '8z80tmvu': {
      'ru': 'Настройки',
      'en': 'Settings',
    },
    'vpclsb96': {
      'ru': 'FAQ & Поддержка',
      'en': 'FAQ &amp; Support',
    },
    'iht8tcx2': {
      'ru': 'Выйти',
      'en': 'Go out',
    },
    '3sxunb21': {
      'ru': 'Удалить аккаунт',
      'en': 'Delete account',
    },
    'xde97kt8': {
      'ru': 'Home',
      'en': 'Home',
    },
  },
  // createObject
  {
    'g439apfk': {
      'ru': 'Add new object',
      'en': 'Add new object',
    },
    'nzkckrmp': {
      'ru': 'Name of the object',
      'en': 'Name of the object',
    },
    'nu5r0yd8': {
      'ru': 'Description of the object',
      'en': 'Description of the object',
    },
    '686muk7z': {
      'ru': 'Name of the first scene',
      'en': 'Name of the first scene',
    },
    'jh7c0vhz': {
      'ru': 'The scene is loaded',
      'en': 'Upload the first scene',
    },
    'uoe603go': {
      'ru': 'Upload the first scene',
      'en': 'Upload the first scene',
    },
    'pwodgunn': {
      'ru': 'Add object',
      'en': 'Add object',
    },
    'unh0jabz': {
      'ru': 'Home',
      'en': 'Home',
    },
  },
  // pageObject
  {
    'snpekkiz': {
      'ru': 'Add scene',
      'en': 'Add scene',
    },
    'oo1tzllo': {
      'ru': 'У этого объекта отсуствуют сцены',
      'en': 'This property has no scenes',
    },
    'o14q50o5': {
      'ru': 'Favorites',
      'en': 'Favorites',
    },
    'cbl2fwtp': {
      'ru': 'Add object',
      'en': 'Add object',
    },
    'kow0vvgn': {
      'ru': 'Cloud',
      'en': 'Cloud',
    },
    'hsw1ejo1': {
      'ru': 'Home',
      'en': 'Home',
    },
  },
  // createScene
  {
    'zp7o2oyb': {
      'ru': 'Add new scene',
      'en': 'Add new scene',
    },
    'nfw5pe5k': {
      'ru': 'Enter name of the scene',
      'en': 'Enter name of the scene',
    },
    'eb6sx759': {
      'ru': 'Upload the scene',
      'en': 'Upload the scene',
    },
    'ce6qfzv5': {
      'ru': 'Add scene',
      'en': 'Add scene',
    },
    '2jh4c346': {
      'ru': 'Home',
      'en': 'Home',
    },
  },
  // settings
  {
    '32r9tqls': {
      'ru': 'Settings',
      'en': 'Settings',
    },
    'lffx6phq': {
      'ru': 'App settings',
      'en': 'App settings',
    },
    'xparl76g': {
      'ru': 'Sound',
      'en': 'Sound',
    },
    'ezx19xkm': {
      'ru': 'Show grid',
      'en': 'Show grid',
    },
    'rl1x1dig': {
      'ru': 'Home',
      'en': 'Home',
    },
  },
  // faqScreen
  {
    'ege3phte': {
      'ru': 'Support',
      'en': 'Support',
    },
    'rgwxq9w5': {
      'ru': 'FAQ',
      'en': 'FAQ',
    },
    '6k3sj3qw': {
      'ru': ' ',
      'en': '',
    },
    'a764ebj8': {
      'ru': 'Send to Telegram',
      'en': 'Write to Telegram',
    },
    'z0a9zutu': {
      'ru': 'Send to Whatsapp',
      'en': 'Write to Whatsapp',
    },
    'fccqnvcc': {
      'ru': 'Call us',
      'en': 'Call us',
    },
    'xjkrclu6': {
      'ru': 'Home',
      'en': 'Home',
    },
  },
  // test
  {
    'dev2jqws': {
      'ru': 'Page Title',
      'en': '',
    },
    'j71ys2el': {
      'ru': 'Home',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'xr3f8cwh': {
      'ru': '',
      'en': '',
    },
    '4ur23ano': {
      'ru': '',
      'en': '',
    },
    'tuauk1qq': {
      'ru': '',
      'en': '',
    },
    'yz7ibukb': {
      'ru': '',
      'en': '',
    },
    '5fos96wv': {
      'ru': '',
      'en': '',
    },
    'no8c017p': {
      'ru': '',
      'en': '',
    },
    'rvte6u6t': {
      'ru': '',
      'en': '',
    },
    'uheujmgo': {
      'ru': '',
      'en': '',
    },
    'vxlhyomt': {
      'ru': '',
      'en': '',
    },
    '3vi0zzd4': {
      'ru': 'Неверный формат',
      'en': '',
    },
    'ss1mor0g': {
      'ru': 'Загрузка файла...',
      'en': '',
    },
    '4hv6tf6i': {
      'ru': 'Файл успешно загружен!',
      'en': 'File uploaded successfully!',
    },
    'zkgi8lm8': {
      'ru': 'Ошибка при загрузке',
      'en': 'Load error',
    },
    'm6vzkuvh': {
      'ru': '',
      'en': '',
    },
    '3lxwc733': {
      'ru': '',
      'en': '',
    },
    'pqj80436': {
      'ru': '',
      'en': '',
    },
    'd5rbk2gy': {
      'ru': '',
      'en': '',
    },
    'y08vsr0t': {
      'ru': '',
      'en': '',
    },
    'sljwu45s': {
      'ru': '',
      'en': '',
    },
    '63nycyfz': {
      'ru': '',
      'en': '',
    },
    'xkvhc7up': {
      'ru': '',
      'en': '',
    },
    'nypqfbt2': {
      'ru': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
