import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    this.url,
    this.label,
    this.size = 50.0,
    this.showShadow = true,
    this.borderColor,
    super.key,
  });

  const UserAvatar.stack({
    String? url,
    String? label,
    Key? key,
  }) : this(
         url: url,
         label: label,
         size: 32,
         showShadow: false,
         borderColor: null,
         key: key,
       );

  final String? url;
  final String? label;
  final double size;
  final bool showShadow;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    final color = context.color;

    final effectiveBorderColor =
        borderColor ??
        (size > 40 ? color.backgroundPrimary : color.backgroundWhite);

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,

        color: effectiveBorderColor,
        border: Border.all(
          color: effectiveBorderColor,
          width: 2,
        ),
        boxShadow: showShadow
            ? [
                BoxShadow(
                  color: color.shadowMedium,
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ]
            : null,
      ),
      child: ClipOval(
        child: label != null
            ? Center(
                child: Text(
                  label!,
                  style: TextStyle(
                    fontSize: size * 0.38,
                    fontWeight: FontWeight.bold,
                    color: color.textPrimary,
                  ),
                ),
              )
            : Image.network(
                url ?? '',
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return _ErrorPlaceholder(size: size);
                },

                errorBuilder: (context, error, stackTrace) =>
                    _ErrorPlaceholder(size: size),
              ),
      ),
    );
  }
}

class _ErrorPlaceholder extends StatelessWidget {
  const _ErrorPlaceholder({required this.size});
  final double size;

  @override
  Widget build(BuildContext context) {
    final color = context.color;

    return Container(
      alignment: Alignment.center,
      color: color.iconLightGrey,
      child: Icon(
        Icons.person,
        color: color.iconGrey,
        size: size * 0.6,
      ),
    );
  }
}

class AvatarStack extends StatelessWidget {
  const AvatarStack({
    required this.urls,
    this.overlap = 8,
    this.limit = 5,
    super.key,
  });

  final List<String?> urls;
  final double overlap;
  final int limit;

  @override
  Widget build(BuildContext context) {
    const avatarSize = 32.0;
    final widthFactor = (avatarSize - overlap) / avatarSize;

    final showCounter = urls.length > limit;
    final itemsToShow = showCounter ? limit : urls.length;
    final remaining = urls.length - limit;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (int i = 0; i < itemsToShow; i++)
          Align(
            alignment: Alignment.centerLeft,
            widthFactor: (i == itemsToShow - 1 && !showCounter)
                ? 1.0
                : widthFactor,
            child: UserAvatar.stack(url: urls[i]),
          ),
        if (showCounter)
          Align(
            alignment: Alignment.centerLeft,
            widthFactor: 1,
            child: UserAvatar.stack(
              label: '+$remaining',
            ),
          ),
      ],
    );
  }
}
