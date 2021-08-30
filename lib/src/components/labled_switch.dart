import 'package:flutter/material.dart';

class LabledSwitch extends StatelessWidget {
  const LabledSwitch({
    Key? key,
    required this.label,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final Widget label;

  final bool value;

  final ValueSetter<bool>? onChanged;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            label,
            Switch(
              value: value,
              onChanged: onChanged,
            ),
          ],
        ),
      );
}
