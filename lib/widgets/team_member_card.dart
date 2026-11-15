import 'package:flutter/material.dart';

class TeamMemberCard extends StatelessWidget {
  final String name;
  final String role;
  final String description;
  final String category;
  final String tagline;
  final String? imagePath;

  const TeamMemberCard({
    super.key,
    required this.name,
    required this.role,
    required this.description,
    required this.category,
    required this.tagline,
    this.imagePath,
  });

  Widget _placeholder() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF847D7D),
            Color(0xFF443D3D),
          ],
        ),
      ),
      alignment: Alignment.center,
      child: const Text(
        'MX',
        style: TextStyle(
          fontSize: 54,
          fontWeight: FontWeight.w600,
          color: Colors.white38,
          letterSpacing: 6,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final parts = category.trim().split(' ');
    final number = parts.length > 1 ? parts.last : '';
    final label = parts.length > 1
        ? parts.sublist(0, parts.length - 1).join(' ')
        : category;

    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: const Color(0xFF1B1C1D),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xFF303030),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: imagePath == null
                    ? _placeholder()
                    : Image.asset(
                  imagePath!,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return _placeholder();
                  },
                ),
              ),
              Positioned(
                top: 16,
                left: 16,
                right: 16,
                child: Row(
                  children: [
                    Flexible(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0x55333333),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.white38,
                          ),
                        ),
                        child: Text(
                          label.toUpperCase(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      number,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  role.toUpperCase(),
                  style: const TextStyle(
                    color: Color(0xFFBDB6B6),
                    fontSize: 11,
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(height: 14),
                Text(
                  name,
                  style: const TextStyle(
                    color: Color(0xFFF0EEEE),
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: 18),
                Text(
                  description,
                  style: const TextStyle(
                    color: Color(0xFFA2A1AA),
                    fontSize: 15,
                    height: 1.8,
                  ),
                ),
                const SizedBox(height: 28),
                const Divider(
                  color: Color(0xFF777777),
                  thickness: 0.5,
                ),
                const SizedBox(height: 12),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '•',
                      style: TextStyle(
                        color: Color(0xFFDE8585),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        tagline,
                        style: const TextStyle(
                          color: Color(0xFF9D9696),
                          fontSize: 12,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}