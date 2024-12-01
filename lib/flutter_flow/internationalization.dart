import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'hi'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? hiText = '',
  }) =>
      [enText, hiText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

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

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // AuthPage
  {
    'xfphystu': {
      'en': 'Krishi Bandhu 🌱',
      'hi': 'कृषि बंधु',
    },
    'y2544kpf': {
      'en': 'Create Account',
      'hi': 'खाता बनाएं',
    },
    'q7pv5yyp': {
      'en': 'Create Account',
      'hi': 'खाता बनाएं',
    },
    'kq3j4nqn': {
      'en': 'Let\'s get started by filling out the form below.',
      'hi': 'नीचे दिए गए फॉर्म को भरकर शुरुआत करें।',
    },
    'abfjyifc': {
      'en': 'Email',
      'hi': 'ईमेल',
    },
    '9ge4bizr': {
      'en': 'Password',
      'hi': 'पासवर्ड',
    },
    'r9c0rgma': {
      'en': 'Get Started',
      'hi': 'स्वागत है',
    },
    't0gef9qh': {
      'en': 'Or sign up with',
      'hi': 'या साइन अप करें',
    },
    'o58txri7': {
      'en': 'Continue with Google',
      'hi': 'Google के साथ जारी रखें',
    },
    'phwjmm2e': {
      'en': 'Log In',
      'hi': 'लॉग इन करें',
    },
    'cooanwe3': {
      'en': 'Welcome Back',
      'hi': 'स्वागत है',
    },
    '8x3rn3yy': {
      'en': 'Fill out the information below in order to access your account.',
      'hi': 'अपने खाते तक पहुंचने के लिए नीचे दी गई जानकारी भरें।',
    },
    'm6rgzw3f': {
      'en': 'Email',
      'hi': 'ईमेल',
    },
    '82xz0u43': {
      'en': 'Password',
      'hi': 'पासवर्ड',
    },
    'ynpd3k3y': {
      'en': 'Sign In',
      'hi': 'दाखिल करें',
    },
    'swlv33yu': {
      'en': 'Or sign in with',
      'hi': 'या साइन इन करें',
    },
    'zhfn96up': {
      'en': 'Continue with Google',
      'hi': 'Google के साथ जारी रखें',
    },
    '635amvn6': {
      'en': 'Continue with Apple',
      'hi': 'Apple के साथ जारी रखें',
    },
    'ducsbe5t': {
      'en': 'Forgot Password?',
      'hi': 'पासवर्ड भूल गए?',
    },
    'y9gb74iw': {
      'en': 'Home',
      'hi': 'घर',
    },
  },
  // ServicesPage
  {
    'f377rwjq': {
      'en': 'Yield Prediction',
      'hi': '',
    },
    '9oyu7o89': {
      'en': 'Plant Disease Detection',
      'hi': '',
    },
    '2hr7r835': {
      'en': 'Soil Quality Assessment',
      'hi': '',
    },
    'hq2o89uk': {
      'en': 'Weed Identification',
      'hi': '',
    },
    '40tb3dwk': {
      'en': 'Services',
      'hi': '',
    },
  },
  // ProfilePage
  {
    '4i5tlrcx': {
      'en': 'Switch to Dark Mode',
      'hi': '',
    },
    '40b8iovp': {
      'en': 'Switch to Light Mode',
      'hi': '',
    },
    'nx4o6kk2': {
      'en': 'Edit Profile',
      'hi': '',
    },
    '3ului008': {
      'en': 'Log Out',
      'hi': '',
    },
    'i1kuje1w': {
      'en': 'Profile',
      'hi': '',
    },
  },
  // EditProfilePage
  {
    '8ori4gul': {
      'en': 'Update Phone Number',
      'hi': '',
    },
    'jgdj0ie3': {
      'en': 'Update Description',
      'hi': '',
    },
    'lcfrqvsh': {
      'en': 'Update Profile',
      'hi': '',
    },
    't11z9lhm': {
      'en': 'Log Out',
      'hi': '',
    },
    'y8uvt00k': {
      'en': 'Update',
      'hi': '',
    },
  },
  // CropPrediction
  {
    '8aw1kyzl': {
      'en': 'Yield Prediction',
      'hi': '',
    },
    '99dx22uv': {
      'en':
          'Here, we analyze historical weather data, soil conditions, and crop performance to predict the yield of different crops. \n\nFor example, convolutional neural networks (CNNs) can be used to analyze satellite images and predict crop health and yield.',
      'hi': '',
    },
    'go7b271b': {
      'en': 'Home',
      'hi': '',
    },
  },
  // SoilPrediction
  {
    'p5t56s7i': {
      'en': 'Soil Assessment',
      'hi': '',
    },
    'a6hggld0': {
      'en':
          'ML models can analyze data from sensors and soil samples to assess soil health and predict nutrient needs. \nRegression models and decision trees are often used to recommend appropriate fertilizers and soil amendments.',
      'hi': '',
    },
    'gp4jjfuj': {
      'en': 'Home',
      'hi': '',
    },
  },
  // PlantDiseaseDetection
  {
    'mxhr60ci': {
      'en': 'Disease Detection',
      'hi': '',
    },
    '2569s6te': {
      'en':
          'ML models, especially those using image recognition techniques, can identify diseases from images of plants. \nModels like CNNs and transfer learning methods help in detecting early signs of infestations or infections, allowing for timely intervention.',
      'hi': '',
    },
    'l81u9ehv': {
      'en': 'Home',
      'hi': '',
    },
  },
  // WeatherForecasting
  {
    'cznknakg': {
      'en': 'Weather',
      'hi': '',
    },
    'p8b4p66t': {
      'en': 'Today',
      'hi': '',
    },
    '8isjuo3p': {
      'en': 'Raipur, India',
      'hi': '',
    },
    'lhhhebkn': {
      'en': '16km',
      'hi': '',
    },
    '8h2dm1gw': {
      'en': '30',
      'hi': '',
    },
    's1cptyvf': {
      'en': '0',
      'hi': '',
    },
    '7ykvj7z3': {
      'en': 'Feels like 34',
      'hi': '',
    },
    '8woip6sf': {
      'en': '65%',
      'hi': '',
    },
    'q8p6pim9': {
      'en': 'Weather',
      'hi': '',
    },
  },
  // WeedIdentification
  {
    'idnxu91j': {
      'en': 'Weed Identification',
      'hi': '',
    },
    'hc2pxsms': {
      'en':
          'We can distinguish between crops and weeds using image data, allowing for targeted weed control. \n\nThis reduces the need for broad-spectrum herbicides and minimizes environmental impact.',
      'hi': '',
    },
    'ec5lu5si': {
      'en': 'Home',
      'hi': '',
    },
  },
  // Miscellaneous
  {
    '9dm536hl': {
      'en': '',
      'hi': '',
    },
    'cmuhht81': {
      'en': '',
      'hi': '',
    },
    'znugwnx6': {
      'en': '',
      'hi': '',
    },
    '6d9q0k2w': {
      'en': '',
      'hi': '',
    },
    'hfzppcfc': {
      'en': '',
      'hi': '',
    },
    'cwj7mqwe': {
      'en': '',
      'hi': '',
    },
    'g5hd5jef': {
      'en': '',
      'hi': '',
    },
    '26vrkrix': {
      'en': '',
      'hi': '',
    },
    '8662v78y': {
      'en': '',
      'hi': '',
    },
    '5zwzft3m': {
      'en': '',
      'hi': '',
    },
    'nbgim4ov': {
      'en': '',
      'hi': '',
    },
    'ty0iteze': {
      'en': '',
      'hi': '',
    },
    'u0q9hfgw': {
      'en': '',
      'hi': '',
    },
    'r3pwtse4': {
      'en': '',
      'hi': '',
    },
    'yl2a9zfo': {
      'en': '',
      'hi': '',
    },
    'y99o5gjd': {
      'en': '',
      'hi': '',
    },
    'zfp97iug': {
      'en': '',
      'hi': '',
    },
    'cltd5s6o': {
      'en': '',
      'hi': '',
    },
    'uers3m8j': {
      'en': '',
      'hi': '',
    },
    'r3t6pyek': {
      'en': '',
      'hi': '',
    },
    '1y8ur0y8': {
      'en': '',
      'hi': '',
    },
    'vz72nr1u': {
      'en': '',
      'hi': '',
    },
    'y2lunqtn': {
      'en': '',
      'hi': '',
    },
    '6eewyqou': {
      'en': '',
      'hi': '',
    },
    'ou2y8vz7': {
      'en': '',
      'hi': '',
    },
  },
].reduce((a, b) => a..addAll(b));
