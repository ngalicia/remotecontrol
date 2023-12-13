import 'package:flutter/material.dart';

import 'data.dart';

class PowerPanel extends StatelessWidget {
  final Function onEmit;

  const PowerPanel({
    super.key,
    required this.onEmit,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Material(
          borderRadius: BorderRadius.circular(30),
          color: Colors.red,
          child: InkWell(
            borderRadius: BorderRadius.circular(30),
            splashColor: Colors.white30,
            child: Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.transparent,
              ),
              child: const Icon(
                Icons.power_settings_new,
              ),
            ),
            onTap: () async {
              await onEmit(context, power);
            },
          ),
        ),
        Material(
          borderRadius: BorderRadius.circular(18.0),
          color: Colors.white,
          child: InkWell(
            borderRadius: BorderRadius.circular(18.0),
            splashColor: Colors.white30,
            child: Container(
              width: 72,
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                color: Colors.transparent,
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Menu',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            onTap: () async {
              await onEmit(context, menu);
            },
          ),
        ),
        Material(
          borderRadius: BorderRadius.circular(18.0),
          color: Colors.white,
          child: InkWell(
            borderRadius: BorderRadius.circular(18.0),
            splashColor: Colors.white30,
            child: Container(
              width: 72,
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                color: Colors.transparent,
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Source',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            onTap: () async {
              await onEmit(context, source);
            },
          ),
        ),
        Material(
          borderRadius: BorderRadius.circular(18.0),
          color: Colors.white,
          child: InkWell(
            borderRadius: BorderRadius.circular(18.0),
            splashColor: Colors.white30,
            child: Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                color: Colors.transparent,
              ),
              child: const Icon(
                Icons.volume_down,
              ),
            ),
            onTap: () async {
              await onEmit(context, mute);
            },
          ),
        ),
      ],
    );
  }
}
