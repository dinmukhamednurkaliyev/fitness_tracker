import 'package:appearance/appearance.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

extension type LayoutNamespace(BuildContext context) {
  Widget scaffold({
    required Widget body,
    PreferredSizeWidget? appBar,
    Widget? bottomNavigationBar,
    Widget? floatingActionButton,
    Color? backgroundColor,
    bool safe = true,
  }) {
    final color = context.color;
    return Scaffold(
      backgroundColor: backgroundColor ?? color.backgroundPrimary,
      appBar: appBar,
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
      body: safe ? SafeArea(child: body) : body,
    );
  }

  Widget scrollable({
    required List<Widget> children,
    EdgeInsetsGeometry? padding,
  }) {
    final spacing = context.spacing;
    return SingleChildScrollView(
      padding: padding ?? EdgeInsets.all(spacing.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: spacing.md,
        children: children,
      ),
    );
  }

  Widget list({
    required int itemCount,
    required Widget Function(BuildContext, int) itemBuilder,
    EdgeInsetsGeometry? padding,
  }) {
    final spacing = context.spacing;
    return ListView.builder(
      padding: padding ?? EdgeInsets.all(spacing.md),
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }

  AppBar appBar({
    required Widget title,
    required double toolbarHeight,
    List<Widget> actions = const [],
    double? titleSpacing,
    bool centerTitle = false,
    Color? backgroundColor,
    double elevation = 0,
    double scrolledUnderElevation = 0,
  }) {
    final color = context.color;
    final spacing = context.spacing;
    return AppBar(
      backgroundColor: backgroundColor ?? color.backgroundPrimary,
      centerTitle: centerTitle,
      title: title,
      titleSpacing: titleSpacing ?? spacing.sm,
      elevation: elevation,
      scrolledUnderElevation: scrolledUnderElevation,
      actions: actions,
      toolbarHeight: toolbarHeight,
    );
  }

  Widget shell({
    required StatefulNavigationShell shell,
    required List<({IconData icon, int index})> items,
  }) {
    final color = context.color;
    final spacing = context.spacing;
    final radius = context.radius;

    return Scaffold(
      body: shell,
      bottomNavigationBar: SizedBox(
        height: 100,
        child: Container(
          margin: EdgeInsets.only(
            bottom: spacing.xxl,
            top: spacing.xxs,
            left: spacing.xxl,
            right: spacing.xxl,
          ),
          padding: EdgeInsets.symmetric(vertical: spacing.xxs),
          decoration: BoxDecoration(
            color: color.bottomNavigationBackground,
            borderRadius: BorderRadius.circular(radius.xxxl),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: items
                .map(
                  (item) => _navigationItem(
                    icon: item.icon,
                    isSelected: shell.currentIndex == item.index,
                    onTap: () => shell.goBranch(
                      item.index,
                      initialLocation: item.index == shell.currentIndex,
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }

  Widget _navigationItem({
    required IconData icon,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    final color = context.color;
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          color: isSelected ? color.backgroundWhite : Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: isSelected ? color.backgroundBlack : color.backgroundWhite,
          size: 24,
        ),
      ),
    );
  }
}

extension LayoutNamespaceContext on BuildContext {
  LayoutNamespace get layout => LayoutNamespace(this);
}
