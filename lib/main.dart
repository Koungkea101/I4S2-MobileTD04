import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'login.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const MainApp(), // Wrap your app
      ),
    );

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  // shared preferences
  bool _isDarkMode = false;
  String _selectedLanguage = 'en';
  bool _isLoading = true;
  // Mapping languages
  // ignore: non_constant_identifier_names
  static final Map<String, Map<String, String>> LocalizedStrings = {
    'en': {
      'greeting': 'Hello!',
      'login': 'Log in',
      'username': 'Username',
      'password': 'Password'
    },
    'fr': {
      'greeting': 'Bonjour!',
      'login': 'Connexion',
      'username': 'Nom d\'utilisateur',
      'password': 'Mot de passe'
    },
    'kh': {
      'greeting': 'សួស្តី!',
      'login': 'ចូល',
      'username': 'ឈ្មោះអ្នកប្រើប្រាស់',
      'password': 'ពាក្យសម្ងាត់'
    },
  };

  @override
  void initState() {
    super.initState();
    _loadPreferences();
  }

  Future<void> _loadPreferences() async {
    final isDarkMode = await PreferencesService.getDarkMode();
    final selectedLanguage = await PreferencesService.getLanguage();
    setState(() {
      _isDarkMode = isDarkMode;
      _selectedLanguage = selectedLanguage;
      _isLoading = false;
    });
  }

  Future<void> _toggleTheme() async {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
    await PreferencesService.setDarkMode(_isDarkMode);
  }

  Future<void> _changeLanguage(String languageCode) async {
    setState(() {
      _selectedLanguage = languageCode;
    });
    await PreferencesService.setLanguage(_selectedLanguage);
  }


  // Method to get localized strings
  String getLocalizedString(String key) {
    return LocalizedStrings[_selectedLanguage]?[key] ?? key;
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TP06 App',
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: LoginScreen(
        isDarkMode: _isDarkMode,
        selectedLanguage: _selectedLanguage,
        onThemeToggle: _toggleTheme,
        onLanguageChange: _changeLanguage,
        getLocalizedString: getLocalizedString,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PreferencesService {
  static const String _darkModeKey = 'darkMode';
  static const String _languageKey = 'language';


  static Future<bool> getDarkMode() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_darkModeKey) ?? false;
  }

  static Future<void> setDarkMode(bool isDarkMode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_darkModeKey, isDarkMode);
  }
  static Future<String> getLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_languageKey) ?? 'en';
  }
  static Future<void> setLanguage(String selectedLanguage) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_languageKey, selectedLanguage);
  }
}