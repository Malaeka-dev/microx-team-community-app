import 'package:flutter/material.dart';
import '../utils/open_website.dart';
import '../widgets/team_member_card.dart';
import '../widgets/careers_banner.dart';
import '../widgets/contact_section.dart';
import '../widgets/microx_footer.dart';
import 'community_screen.dart';
import '../widgets/announcement_banner.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final sidePadding = screenWidth < 600 ? 20.0 : 40.0;

    return Scaffold(
      appBar: AppBar(
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
              if (value == 'community') {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (context) => const CommunityScreen(),
                  ),
                );
              }
            },
            itemBuilder: (context) => const [
              PopupMenuItem<String>(value: 'team', child: Text('Team')),
              PopupMenuItem<String>(
                value: 'community',
                child: Text('Community'),
              ),
            ],
          ),
          const SizedBox(width: 8),
        ],
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
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AnnouncementBanner(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: sidePadding,
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
                                'MEET OUR TEAM',
                                style: TextStyle(
                                  color: Color(0xFFBDBDC5),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 2,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Text.rich(
                          const TextSpan(
                            children: [
                              TextSpan(
                                text: 'Independent minds.\n',
                                style: TextStyle(color: Color(0xFFF4F2F0)),
                              ),
                              TextSpan(
                                text: 'One shared ambition.',
                                style: TextStyle(color: Color(0xFF929197)),
                              ),
                            ],
                          ),
                          style: TextStyle(
                            fontSize: screenWidth < 600 ? 36 : 56,
                            fontWeight: FontWeight.w400,
                            height: 1.15,
                            letterSpacing: -1,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'The people behind the ideas.\n'
                          'The team behind what comes next.',
                          style: TextStyle(fontSize: 16, height: 1.6),
                        ),
                        const SizedBox(height: 40),

                        // First team member card
                        ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 480),
                          child: TeamMemberCard(
                            name: 'Mehmood ul Hassan',
                            imagePath: 'assets/images/CEO.web.jpg',
                            role: 'Chief Executive Officer',
                            category: 'CEO 01',
                            description:
                                'With 5 years of hands-on experience in Cybersecurity, '
                                'our CEO is dedicated to building secure, resilient '
                                'digital infrastructures and leading MicroX toward '
                                'tech-driven innovation and growth.',
                            tagline: 'Vision & direction',
                          ),
                        ),

                        const SizedBox(height: 24),

                        ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 480),
                          child: const TeamMemberCard(
                            name: 'Muhammad Ali Raza',
                            imagePath: 'assets/images/Management.web.jpg',
                            role: 'Manager',
                            category: 'Management 02',
                            description:
                                'Bringing 3 years of expertise in Artificial '
                                'Intelligence and Machine Learning, our Manager '
                                'drives smart technology solutions, streamlining '
                                'workflows and empowering MicroX with '
                                'data-driven innovation.',
                            tagline: 'People & delivery',
                          ),
                        ),

                        const SizedBox(height: 24),

                        ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 480),
                          child: const TeamMemberCard(
                            name: 'Minahil Rani',
                            imagePath: 'assets/images/Minahil.web.jpg',
                            role: 'Team Lead',
                            category: 'Engineering 03',
                            description:
                                'Minahil Rani is a dedicated Team Lead at MicroX, '
                                'committed to fostering collaboration, guiding '
                                'team efforts, and ensuring effective project '
                                'coordination. She brings leadership, technical '
                                'insight, and problem-solving skills to the team, '
                                'contributing to innovative ideas and successful '
                                'project development.',
                            tagline: 'Build & collaborate',
                          ),
                        ),

                        const SizedBox(height: 24),

                        ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 480),
                          child: const TeamMemberCard(
                            name: 'Profile coming soon',
                            role: 'Human Resources',
                            category: 'People 04',
                            description:
                                'We’re preparing this introduction. '
                                'Meet the person behind this role here soon.',
                            tagline: 'Culture & growth',
                          ),
                        ),

                        const SizedBox(height: 24),

                        ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 480),
                          child: const TeamMemberCard(
                            name: 'Junaid Sarwar',
                            imagePath: 'assets/images/advisor.web.jpg',
                            role: 'Advisor',
                            category: 'Advisory 05',
                            description:
                                'Backed by 2.5 years of experience in App '
                                'Development, our Advisor provides strategic '
                                'guidance on mobile architecture and technology '
                                'trends to keep MicroX ahead in the digital space.',
                            tagline: 'Perspective & guidance',
                          ),
                        ),

                        const SizedBox(height: 24),

                        ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 480),
                          child: const TeamMemberCard(
                            name: 'Chaudhary Saifullah',
                            imagePath:
                                'assets/images/socialmediaincharge.web.jpg',
                            role: 'Social Media Incharge',
                            category: 'Social 06',
                            description:
                                'Combining 3 years of App Development experience '
                                'with a strong passion for digital outreach, '
                                'our Social Media In-Charge crafts engaging '
                                'content to expand MicroX’s digital presence '
                                'and connect with users.',
                            tagline: 'Stories & community',
                          ),
                        ),

                        const SizedBox(height: 32),
                        CareersBanner(
                          onCareersTap: () {
                            openWebsite(
                              context,
                              'https://microxtechcompany.com/careers',
                            );
                          },
                        ),
                        const SizedBox(height: 40),
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
