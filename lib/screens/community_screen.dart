import 'package:flutter/material.dart';

import '../utils/open_website.dart';
import '../widgets/announcement_banner.dart';
import '../widgets/contact_section.dart';
import '../widgets/event_card.dart';
import '../widgets/microx_footer.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: AppBar(
        title: const Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'micro',
                style: TextStyle(color: Color(0xFFF4F2F0)),
              ),
              TextSpan(
                text: 'x.',
                style: TextStyle(color: Color(0xFFB50909)),
              ),
            ],
          ),
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
            letterSpacing: -1.2,
          ),
        ),
        actions: [
          Center(
            child: OutlinedButton(
              onPressed: () {
                openWebsite(
                  context,
                  'https://microxtechcompany.com/portal',
                );
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color(0xFFF4F2F0),
                side: const BorderSide(color: Color(0xFF484848)),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: const Text(
                'Team Portal',
                style: TextStyle(fontSize: 11),
              ),
            ),
          ),
          PopupMenuButton<String>(
            tooltip: 'Navigation menu',
            icon: const Icon(Icons.menu),
            color: const Color(0xFF1B1C1D),
            onSelected: (value) {
              if (value == 'team') {
                Navigator.of(context).maybePop();
              }
            },
            itemBuilder: (context) => const [
              PopupMenuItem<String>(
                value: 'team',
                child: Text('Team'),
              ),
              PopupMenuItem<String>(
                value: 'community',
                child: Text('Community'),
              ),
            ],
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AnnouncementBanner(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width < 600 ? 20 : 40,
                  vertical: 48,
                ),
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 1100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: 7,
                              color: Color(0xFFD52B2B),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                'THE MICROX COMMUNITY',
                                style: TextStyle(
                                  color: Color(0xFFBDBDC5),
                                  fontSize: 12,
                                  letterSpacing: 2,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Text(
                          'Build something.\nLearn something.',
                          style: TextStyle(
                            color: const Color(0xFFF4F2F0),
                            fontSize: width < 600 ? 36 : 56,
                            fontWeight: FontWeight.w400,
                            height: 1.15,
                            letterSpacing: -1,
                          ),
                        ),
                        const SizedBox(height: 24),
                        const Text(
                          'A place for curious minds, fresh ideas and '
                              'shared progress. Explore our upcoming hackathons, '
                              'developer challenges and community events.',
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.7,
                            color: Color(0xFFA2A1AA),
                          ),
                        ),
                        const SizedBox(height: 64),

                        EventCard(
                          category: 'Hackathon',
                          title: 'MicroX November Hackathon',
                          description:
                          'A new build challenge is coming after '
                              '9 November 2026. Register early; exact dates '
                              'and the final brief will be announced here.',
                          notice: 'Deadline: 15 Nov 2026, 23:59 GMT+5',
                          date: 'Date to be announced',
                          location: 'Online · details to be announced',
                          onTap: () {
                            openWebsite(
                              context,
                              'https://microxtechcompany.com/community/'
                                  'microx-november-hackathon',
                            );
                          },
                        ),

                        const SizedBox(height: 24),

                        EventCard(
                          category: 'Hackathon',
                          title: 'Build the next',
                          description:
                          'A community hackathon for curious minds. '
                              'Bring an idea. Build something that matters.',
                          notice: 'SAMPLE EVENT · DETAILS TO BE CONFIRMED',
                          date: 'Dec 5, 2026',
                          location: 'Online',
                          onTap: () {
                            openWebsite(
                              context,
                              'https://microxtechcompany.com/community/'
                                  'build-the-next',
                            );
                          },
                        ),

                        const SizedBox(height: 24),

                        EventCard(
                          category: 'Challenge',
                          title: 'The frontend challenge',
                          description:
                          'One brief. Your perspective. Turn a simple '
                              'idea into an exceptional interface.',
                          notice: 'SAMPLE EVENT · DETAILS TO BE CONFIRMED',
                          date: 'Nov 14, 2026',
                          location: 'Online',
                          onTap: () {
                            openWebsite(
                              context,
                              'https://microxtechcompany.com/community/'
                                  'frontend-challenge',
                            );
                          },
                        ),

                        const SizedBox(height: 48),

                        ContactSection(
                          onContactTap: () {
                            openWebsite(
                              context,
                              'https://microxtechcompany.com/contact',
                            );
                          },
                        ),

                        const SizedBox(height: 32),
                        const MicroXFooter(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}