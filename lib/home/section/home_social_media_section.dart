import 'package:fitness_tracker_application/home/home.dart';
import 'package:flutter/material.dart';

class HomeSocialMediaSection extends StatelessWidget {
  const HomeSocialMediaSection({
    required this.item,
    super.key,
  });

  final List<SocialMediaCardItem> item;

  @override
  Widget build(BuildContext context) {
    return SocialMediaCard(
      items: item,
    );
  }
}
