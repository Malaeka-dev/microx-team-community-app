import 'package:flutter/material.dart';

class CareersBanner extends StatelessWidget {
  final VoidCallback? onCareersTap;

  const CareersBanner({
    super.key,
    this.onCareersTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFF1B1C1D),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xFF343434),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '✳',
            style: TextStyle(
              fontSize: 40,
              color: Color(0xFFCBAAAA),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Your perspective belongs somewhere meaningful.',
            style: TextStyle(
              fontSize: 24,
              height: 1.3,
              color: Color(0xFFF4F2F0),
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Curious minds make good company.',
            style: TextStyle(
              fontSize: 15,
              height: 1.6,
              color: Color(0xFFAAA7AE),
            ),
          ),
          const SizedBox(height: 24),
          OutlinedButton(
            onPressed: onCareersTap,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color(0xFFF4F2F0),
              disabledForegroundColor: const Color(0xFFAAA7AE),
              side: const BorderSide(
                color: Color(0xFF484848),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 16,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Text('Find your next chapter'),
                ),
                SizedBox(width: 12),
                Icon(Icons.north_east, size: 18),
              ],
            ),
          ),
        ],
      ),
    );
  }
}