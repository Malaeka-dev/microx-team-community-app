import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  final VoidCallback? onContactTap;

  const ContactSection({
    super.key,
    this.onContactTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 56,
      ),
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.topCenter,
          radius: 1.2,
          colors: [
            Color(0xFF301515),
            Color(0xFF111111),
          ],
        ),
      ),
      child: Column(
        children: [
          const Text(
            'YOUR NEXT CHAPTER STARTS HERE',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 10,
              letterSpacing: 1.5,
              color: Color(0xFFA2A1AA),
            ),
          ),
          const SizedBox(height: 28),
          const Text(
            'A good idea deserves\n'
                'a great team.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w400,
              height: 1.2,
              letterSpacing: -1,
              color: Color(0xFFF4F2F0),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Tell us what you’re thinking. '
                'Let’s work out what’s next.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              height: 1.7,
              color: Color(0xFFB0ACB4),
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: onContactTap,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              disabledBackgroundColor: const Color(0xFFE0DEDE),
              disabledForegroundColor: const Color(0xFF555555),
              elevation: 0,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 18,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Text('Start a conversation'),
                ),
                SizedBox(width: 16),
                Icon(Icons.north_east, size: 18),
              ],
            ),
          ),
        ],
      ),
    );
  }
}