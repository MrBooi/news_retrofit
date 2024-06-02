import 'package:flutter/material.dart';

class RemovableArea extends StatelessWidget {
  const RemovableArea({
    super.key,
    required this.isRemovable,
    required this.onRemove,
  });

  final bool? isRemovable;
  final void Function()? onRemove;

  @override
  Widget build(BuildContext context) {
    if (isRemovable!) {
      return GestureDetector(
        onTap: onRemove,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Icon(Icons.remove_circle_outline, color: Colors.red),
        ),
      );
    }
    return const SizedBox.shrink();
  }
}
