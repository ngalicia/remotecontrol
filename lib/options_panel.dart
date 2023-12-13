import 'package:flutter/material.dart';

import 'data.dart';

class OptionsPanel extends StatelessWidget {
  final Function onEmit;

  const OptionsPanel({
    super.key,
    required this.onEmit,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Material(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white,
          child: InkWell(
            borderRadius: BorderRadius.circular(18),
            splashColor: Colors.white30,
            child: Container(
              width: 72,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.transparent,
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Picture',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            onTap: () async {
              await onEmit(context, picture_mode);
            },
          ),
        ),
        Material(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white,
          child: InkWell(
            borderRadius: BorderRadius.circular(18),
            splashColor: Colors.white30,
            child: Container(
              width: 72,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.transparent,
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Sound',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            onTap: () async {
              await onEmit(context, sound_mode);
            },
          ),
        ),
        Material(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white,
          child: InkWell(
            borderRadius: BorderRadius.circular(18),
            splashColor: Colors.white30,
            child: Container(
              width: 72,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.transparent,
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Aspect',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            onTap: () async {
              await onEmit(context, aspect_ratio);
            },
          ),
        ),
        Material(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white,
          child: InkWell(
            borderRadius: BorderRadius.circular(18),
            splashColor: Colors.white30,
            child: Container(
              width: 72,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.transparent,
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'MTS',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            onTap: () async {
              await onEmit(context, mts);
            },
          ),
        ),
      ],
    );
  }
}
