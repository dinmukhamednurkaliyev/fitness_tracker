import 'package:appearance/appearance.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:session/session.dart';

class SessionPage extends StatelessWidget {
  const SessionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SessionController(),
      child: Builder(
        builder: (context) {
          context.read<SessionController>().loadSessions(context.color);
          return context.layout.scaffold(
            appBar: const _SessionHeader(),
            body: const _SessionBody(),
          );
        },
      ),
    );
  }
}

class _SessionHeader extends StatelessWidget implements PreferredSizeWidget {
  const _SessionHeader();

  static const double _headerHeight = 100;

  @override
  Widget build(BuildContext context) {
    final color = context.color;
    final text = context.text;
    return context.layout.appBar(
      toolbarHeight: _headerHeight,
      centerTitle: true,
      title: Text(
        'Sessions',
        style: text.titleLarge.withColor(color.textPrimary),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(_headerHeight);
}

class _SessionBody extends StatelessWidget {
  const _SessionBody();

  @override
  Widget build(BuildContext context) {
    final sessions = context.select<SessionController, List<SessionCardData>>(
      (controller) => controller.state.sessions,
    );
    return context.layout.scrollable(
      children: [
        SessionAvailableSection(sessions: sessions),
      ],
    );
  }
}
