import 'package:flutter/material.dart';

import 'data.dart';

class ChannelPanel extends StatelessWidget {
  final Function onEmit;

  const ChannelPanel({
    super.key,
    required this.onEmit,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 172,
          width: 56,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                borderRadius: BorderRadius.circular(18.0),
                color: Colors.white,
                child: InkWell(
                  borderRadius: BorderRadius.circular(18.0),
                  splashColor: Colors.white30,
                  child: Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      color: Colors.transparent,
                    ),
                    child: const Icon(
                      Icons.add,
                    ),
                  ),
                  onTap: () async {
                    await onEmit(context, volume_up);
                  },
                ),
              ),
              const Text(
                'VOL',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Material(
                borderRadius: BorderRadius.circular(18.0),
                color: Colors.white,
                child: InkWell(
                  borderRadius: BorderRadius.circular(18.0),
                  splashColor: Colors.white30,
                  child: Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      color: Colors.transparent,
                    ),
                    child: const Icon(
                      Icons.remove,
                    ),
                  ),
                  onTap: () async {
                    await onEmit(context, volume_down);
                  },
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 230,
          width: 200,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.grey,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(18),
                      splashColor: Colors.white30,
                      child: Container(
                        width: 56,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.transparent,
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            '1',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      onTap: () async {
                        await onEmit(context, num1);
                      },
                    ),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.grey,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(18),
                      splashColor: Colors.white30,
                      child: Container(
                        width: 56,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.transparent,
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            '2',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      onTap: () async {
                        await onEmit(context, num2);
                      },
                    ),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.grey,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(18),
                      splashColor: Colors.white30,
                      child: Container(
                        width: 56,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.transparent,
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            '3',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      onTap: () async {
                        await onEmit(context, num3);
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.grey,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(18),
                      splashColor: Colors.white30,
                      child: Container(
                        width: 56,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.transparent,
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            '4',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      onTap: () async {
                        await onEmit(context, num4);
                      },
                    ),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.grey,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(18),
                      splashColor: Colors.white30,
                      child: Container(
                        width: 56,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.transparent,
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            '5',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      onTap: () async {
                        await onEmit(context, num5);
                      },
                    ),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.grey,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(18),
                      splashColor: Colors.white30,
                      child: Container(
                        width: 56,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.transparent,
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            '6',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      onTap: () async {
                        await onEmit(context, num6);
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.grey,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(18),
                      splashColor: Colors.white30,
                      child: Container(
                        width: 56,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.transparent,
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            '7',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      onTap: () async {
                        await onEmit(context, num7);
                      },
                    ),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.grey,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(18),
                      splashColor: Colors.white30,
                      child: Container(
                        width: 56,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.transparent,
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            '8',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      onTap: () async {
                        await onEmit(context, num8);
                      },
                    ),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.grey,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(18),
                      splashColor: Colors.white30,
                      child: Container(
                        width: 56,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.transparent,
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            '9',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      onTap: () async {
                        await onEmit(context, num9);
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.grey,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(18),
                      splashColor: Colors.white30,
                      child: Container(
                        width: 56,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.transparent,
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            '0',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      onTap: () async {
                        await onEmit(context, num0);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 172,
          width: 56,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                borderRadius: BorderRadius.circular(18.0),
                color: Colors.white,
                child: InkWell(
                  borderRadius: BorderRadius.circular(18.0),
                  splashColor: Colors.white30,
                  child: Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      color: Colors.transparent,
                    ),
                    child: const Icon(
                      Icons.arrow_drop_up,
                    ),
                  ),
                  onTap: () async {
                    await onEmit(context, channel_up);
                  },
                ),
              ),
              const Text(
                'CH',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Material(
                borderRadius: BorderRadius.circular(18.0),
                color: Colors.white,
                child: InkWell(
                  borderRadius: BorderRadius.circular(18.0),
                  splashColor: Colors.white30,
                  child: Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      color: Colors.transparent,
                    ),
                    child: const Icon(
                      Icons.arrow_drop_down,
                    ),
                  ),
                  onTap: () async {
                    await onEmit(context, channel_down);
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
