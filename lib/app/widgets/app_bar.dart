import 'package:flutter/material.dart';
import '../../config/theme/app_theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onMenuPressed;
  final VoidCallback? onNotificationPressed;
  final bool showDrawerButton;

  const CustomAppBar({
    super.key,
    required this.title,
    this.onMenuPressed,
    this.onNotificationPressed,
    this.showDrawerButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white.withOpacity(0.8),
      elevation: 0,
      title: Text(
        title,
        style: const TextStyle(
          color: AppTheme.primary,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      leading: showDrawerButton
          ? IconButton(
              icon: const Icon(Icons.menu, color: AppTheme.primary),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            )
          : IconButton(
              icon: const Icon(Icons.arrow_forward, color: AppTheme.primary),
              onPressed: onMenuPressed,
            ),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications, color: AppTheme.primary),
          onPressed: onNotificationPressed,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
