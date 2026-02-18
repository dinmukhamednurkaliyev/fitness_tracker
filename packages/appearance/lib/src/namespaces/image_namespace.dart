import 'package:appearance/src/widgets/user_avatar.dart';
import 'package:flutter/material.dart';

extension type ImagesNamespace(BuildContext context) {
  Widget avatar({
    String? url,
    String? label,
    double size = 50.0,
    bool showShadow = true,
    Color? borderColor,
  }) => UserAvatar(
    url: url,
    label: label,
    size: size,
    showShadow: showShadow,
    borderColor: borderColor,
  );

  Widget avatarStack({
    required List<String?> urls,
    double overlap = 8,
    int limit = 5,
  }) => AvatarStack(
    urls: urls,
    overlap: overlap,
    limit: limit,
  );
}

extension ImageNamespaceContext on BuildContext {
  ImagesNamespace get image => ImagesNamespace(this);
}
