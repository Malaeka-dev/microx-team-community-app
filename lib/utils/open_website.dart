import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> openWebsite(
    BuildContext context,
    String address,
    ) async {
  try {
    final opened = await launchUrl(
      Uri.parse(address),
      mode: LaunchMode.externalApplication,
    );

    if (opened) return;
  } catch (_) {
    // Display a message if the link cannot open.
  }

  if (!context.mounted) return;

  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text('Could not open the link. Please try again.'),
    ),
  );
}