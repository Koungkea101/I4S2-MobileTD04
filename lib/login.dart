import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  final bool isDarkMode;
  final String selectedLanguage;
  final VoidCallback onThemeToggle;
  final Function(String) onLanguageChange;
  final String Function(String) getLocalizedString;

  const LoginScreen({
    Key? key,
    required this.isDarkMode,
    required this.selectedLanguage,
    required this.onThemeToggle,
    required this.onLanguageChange,
    required this.getLocalizedString,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.isDarkMode ? Colors.grey[900] : Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              // Status bar spacer
              const SizedBox(height: 20),

              // Log in tab
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.getLocalizedString('login'),
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFFF7A00),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Container(
                        height: 2,
                        width: 70,
                        color: const Color(0xFFFF7A00),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 80),

              // Logo
              Image.asset(
                'assets/images/logo.png',
                height: 80,
                width: 200,
                fit: BoxFit.contain,
              ),

              const SizedBox(height: 40),

              // Hello text
              Text(
                widget.getLocalizedString('greeting'),
                style: const TextStyle(
                  fontSize: 24,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFFF7A00),
                ),
              ),

              const SizedBox(height: 40),

              // Username field
              Container(
                decoration: BoxDecoration(
                  color:
                    widget.isDarkMode ? Colors.grey[800] : Colors.grey[100],
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: widget.isDarkMode
                        ? Colors.grey[700]!
                        : Colors.grey[300]!,
                  ),
                ),
                child: TextField(
                  controller: _usernameController,
                  style: TextStyle(
                    color: widget.isDarkMode ? Colors.white : Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: widget.getLocalizedString('username'),
                    hintStyle: TextStyle(
                      color: widget.isDarkMode
                          ? Colors.grey[400]
                          : Colors.grey[600],
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Password field
              Container(
                decoration: BoxDecoration(
                  color:
                      widget.isDarkMode ? Colors.grey[800] : Colors.grey[100],
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: widget.isDarkMode
                        ? Colors.grey[700]!
                        : Colors.grey[300]!,
                  ),
                ),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  style: TextStyle(
                    color: widget.isDarkMode ? Colors.white : Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: widget.getLocalizedString('password'),
                    hintStyle: TextStyle(
                      color: widget.isDarkMode
                          ? Colors.grey[400]
                          : Colors.grey[600],
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 32),

              // Login button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF7A00),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    widget.getLocalizedString('login'),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              const Spacer(),

              // Language selection
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildLanguageButton('assets/images/gb-eng.png', 'en'),
                  const SizedBox(width: 16),
                  _buildLanguageButton('assets/images/fr.png', 'fr'),
                  const SizedBox(width: 16),
                  _buildLanguageButton('assets/images/kh.png', 'kh'),
                ],
              ),

              const SizedBox(height: 40),

              // Dark mode toggle
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dark Mode',
                    style: TextStyle(
                      fontSize: 16,
                      color: widget.isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Switch(
                    value: widget.isDarkMode,
                    onChanged: (value) {
                      widget.onThemeToggle();
                    },
                    activeColor: Colors.orange,
                    inactiveThumbColor: Colors.grey,
                    inactiveTrackColor: Colors.grey[300],
                  ),
                ],
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLanguageButton(String imagePath, String code) {
    final isSelected = widget.selectedLanguage == code;
    return ElevatedButton(
      onPressed: () {
        widget.onLanguageChange(code);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor:
            isSelected ? const Color(0xFFFF7A00) : Colors.transparent,
        foregroundColor: isSelected
            ? Colors.white
            : (widget.isDarkMode ? Colors.white : const Color(0xFFFF7A00)),
        elevation: isSelected ? 2 : 0,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
          side: BorderSide(
            color: isSelected ? Colors.orange : Colors.grey[300]!,
          ),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imagePath,
            width: 24,
            height: 16,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 4),
          Text(
            code.toUpperCase(),
            style: TextStyle(
              fontWeight: isSelected ? FontWeight.w500 : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
