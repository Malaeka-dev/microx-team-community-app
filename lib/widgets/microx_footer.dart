import 'package:flutter/material.dart';
import '../utils/open_website.dart';

class MicroXFooter extends StatelessWidget {
  const MicroXFooter({super.key});

  static const String _base = 'https://microxtechcompany.com';

  Widget _link(
      BuildContext context,
      String label,
      String address,
      ) {
    return TextButton(
      onPressed: () {
        openWebsite(context, address);
      },
      style: TextButton.styleFrom(
        foregroundColor: const Color(0xFFD7D2D2),
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(vertical: 10),
        minimumSize: const Size(0, 44),
        tapTargetSize: MaterialTapTargetSize.padded,
        textStyle: const TextStyle(
          fontSize: 14,
          height: 1.4,
        ),
      ),
      child: Text(label),
    );
  }

  Widget _group(
      BuildContext context,
      String title,
      Map<String, String> links,
      double width,
      ) {
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF929197),
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 12),
          for (final entry in links.entries)
            _link(context, entry.key, entry.value),
        ],
      ),
    );
  }

  Widget _logo({bool large = false}) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'micro',
            style: TextStyle(
              color: large
                  ? const Color(0xFF777171)
                  : const Color(0xFFF4F2F0),
            ),
          ),
          const TextSpan(
            text: 'x.',
            style: TextStyle(color: Color(0xFFB50909)),
          ),
        ],
      ),
      style: TextStyle(
        fontSize: large ? 100 : 36,
        fontWeight: large ? FontWeight.bold : FontWeight.w600,
        letterSpacing: large ? -6 : -1.5,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 36),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Color(0xFF292929)),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _logo(),
          const SizedBox(height: 18),
          const Text(
            'Good ideas deserve great engineering.',
            style: TextStyle(
              color: Color(0xFF929197),
              fontSize: 15,
              height: 1.6,
            ),
          ),
          const SizedBox(height: 20),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.public,
                size: 18,
                color: Color(0xFF929197),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Remote · Working across time zones',
                  style: TextStyle(
                    color: Color(0xFF929197),
                    fontSize: 13,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 36),

          LayoutBuilder(
            builder: (context, constraints) {
              final available = constraints.maxWidth;
              final columns = available >= 700
                  ? 3
                  : available >= 300
                  ? 2
                  : 1;
              final columnWidth =
                  (available - (columns - 1) * 24) / columns;

              return Wrap(
                spacing: 24,
                runSpacing: 28,
                children: [
                  _group(
                    context,
                    'Explore',
                    const {
                      'Services': '$_base/services',
                      'Our work': '$_base/work',
                      'The studio': '$_base/studio',
                      'Our team': '$_base/team',
                    },
                    columnWidth,
                  ),
                  _group(
                    context,
                    'Connect',
                    const {
                      'Community': '$_base/community',
                      'Careers': '$_base/careers',
                      'Contact us': '$_base/contact',
                      'Verify a certificate': '$_base/verify',
                    },
                    columnWidth,
                  ),
                  _group(
                    context,
                    'Stay in the loop',
                    const {
                      'Studio notes ↗': '$_base/insights',
                      'LinkedIn ↗':
                      'https://www.linkedin.com/in/micro-x-106521444/',
                      'GitHub ↗':
                      'https://github.com/microx-tech-company',
                      'info@microx.tech': 'mailto:info@microx.tech',
                    },
                    columnWidth,
                  ),
                ],
              );
            },
          ),

          const SizedBox(height: 24),
          const Divider(color: Color(0xFF292929)),
          const SizedBox(height: 20),
          const Text(
            '© 2026 MicroX. Built with purpose.',
            style: TextStyle(
              color: Color(0xFF929197),
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 24,
            runSpacing: 8,
            children: [
              _link(context, 'Privacy', '$_base/privacy'),
              _link(context, 'Team portal', '$_base/portal'),
            ],
          ),
          const SizedBox(height: 48),
          Center(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: _logo(large: true),
            ),
          ),
          const SizedBox(height: 20),
          const Center(
            child: Text(
              'INDEPENDENT MINDS. SHARED AMBITION.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF77717B),
                fontSize: 9,
                letterSpacing: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}