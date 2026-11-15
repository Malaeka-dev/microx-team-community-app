import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final String category;
  final String title;
  final String description;
  final String date;
  final String location;
  final String? notice;
  final VoidCallback? onTap;

  const EventCard({
    super.key,
    required this.category,
    required this.title,
    required this.description,
    required this.date,
    required this.location,
    this.notice,
    this.onTap,
  });

  Widget _detail(IconData icon, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 14, color: const Color(0xFFAAA5A5)),
        const SizedBox(width: 7),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              color: Color(0xFFAAA5A5),
              fontSize: 12,
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final isFeatured = title == 'MicroX November Hackathon';

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: isFeatured
            ? const Color(0xFF343030)
            : const Color(0xFF262323),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFF353030)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Flexible(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 11,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFF403B3B),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: const Color(0xFF514949),
                    ),
                  ),
                  child: Text(
                    category,
                    style: const TextStyle(
                      color: Color(0xFFD1CACA),
                      fontSize: 11,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              IconButton(
                tooltip: 'Explore event',
                onPressed: onTap,
                icon: const Icon(Icons.north_east),
                color: const Color(0xFFEAE3E3),
                disabledColor: const Color(0xFFAAA5A5),
              ),
            ],
          ),

          // Decoration stays above the text.
          SizedBox(
            height: 110,
            width: double.infinity,
            child: ClipRect(
              child: Align(
                alignment: Alignment.centerRight,
                child: ExcludeSemantics(
                  child: isFeatured
                      ? Transform.rotate(
                    angle: -0.2,
                    child: const Icon(
                      Icons.ac_unit,
                      size: 96,
                      color: Color(0xFFAF8E8E),
                    ),
                  )
                      : const FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      '{ }',
                      style: TextStyle(
                        fontSize: 90,
                        height: 1,
                        color: Color(0xFFADA3A3),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),

          if (!isFeatured && notice != null) ...[
            Text(
              notice!,
              style: const TextStyle(
                color: Color(0xFFC4AAAA),
                fontSize: 10,
                letterSpacing: 0.7,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 12),
          ],

          Text(
            title,
            style: const TextStyle(
              color: Color(0xFFF4F0F0),
              fontSize: 25,
              fontWeight: FontWeight.w500,
              height: 1.2,
              letterSpacing: -0.7,
            ),
          ),
          const SizedBox(height: 14),
          Text(
            description,
            style: const TextStyle(
              color: Color(0xFFB6AEAE),
              fontSize: 14,
              height: 1.7,
            ),
          ),
          const SizedBox(height: 24),

          if (isFeatured && notice != null) ...[
            _detail(Icons.schedule, notice!),
            const SizedBox(height: 12),
          ],
          _detail(Icons.calendar_today_outlined, date),
          const SizedBox(height: 12),
          _detail(Icons.public, location),
        ],
      ),
    );
  }
}