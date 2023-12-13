import 'package:flutter/material.dart';

import 'data.dart';

class MediaPanel extends StatelessWidget {
  final Function onEmit;

  const MediaPanel({
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
              child: const Icon(
                Icons.fast_rewind,
              ),
            ),
            onTap: () async {
              await onEmit(context, rewind);
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
              child: const Icon(
                Icons.play_arrow,
              ),
            ),
            onTap: () async {
              await onEmit(context, play);
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
              child: const Icon(
                Icons.pause,
              ),
            ),
            onTap: () async {
              await onEmit(context, pause);
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
              child: const Icon(
                Icons.fast_forward,
              ),
            ),
            onTap: () async {
              await onEmit(context, forward);
            },
          ),
        ),
      ],
    );
  }
}
