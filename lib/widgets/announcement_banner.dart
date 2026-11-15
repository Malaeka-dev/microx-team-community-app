import 'package:flutter/material.dart';
import '../utils/open_website.dart';

class AnnouncementBanner extends StatelessWidget {
  const AnnouncementBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFF242222),
      child: InkWell(
        onTap: () {
          openWebsite(
            context,
            'https://microxtechcompany.com/community/'
                'microx-november-hackathon',
          );
        },
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 14,
          ),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color(0xFF343030),
              ),
            ),
          ),
          child: const Row(
            children: [
              Expanded(
                child: Text(
                  'MicroX November Hackathon · Planned after '
                      '9 November. Early registration is open.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFD2CCCC),
                    fontSize: 11,
                    height: 1.6,
                  ),
                ),
              ),
              SizedBox(width: 12),
              Icon(
                Icons.north_east,
                size: 16,
                color: Color(0xFFD2CCCC),
              ),
            ],
          ),
        ),
      ),
    );
  }
}