import 'package:flutter/material.dart';

import 'data.dart';

class MenuPanel extends StatelessWidget {
  final Function onEmit;

  const MenuPanel({
    super.key,
    required this.onEmit,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Material(
              borderRadius: BorderRadius.circular(18.0),
              color: Colors.white,
              child: InkWell(
                borderRadius: BorderRadius.circular(18.0),
                splashColor: Colors.white30,
                child: Container(
                  width: 56,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    color: Colors.transparent,
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Info',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                onTap: () async {
                  await onEmit(context, info);
                },
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Material(
              borderRadius: BorderRadius.circular(18.0),
              color: Colors.white,
              child: InkWell(
                borderRadius: BorderRadius.circular(18.0),
                splashColor: Colors.white30,
                child: Container(
                  width: 56,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    color: Colors.transparent,
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Exit',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                onTap: () async {
                  await onEmit(context, exit);
                },
              ),
            ),
          ],
        ),
        Container(
          height: 190,
          width: 190,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(96),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    borderRadius: BorderRadius.circular(18.0),
                    color: Colors.blue,
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
                          Icons.keyboard_arrow_left,
                        ),
                      ),
                      onTap: () async {
                        await onEmit(context, menu_left);
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    borderRadius: BorderRadius.circular(18.0),
                    color: Colors.blue,
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
                          Icons.keyboard_arrow_up,
                        ),
                      ),
                      onTap: () async {
                        await onEmit(context, menu_up);
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(36),
                    color: Colors.blue,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(36),
                      splashColor: Colors.white30,
                      child: Container(
                        width: 72,
                        height: 72,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(36),
                          color: Colors.transparent,
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'ENTER',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      onTap: () async {
                        await onEmit(context, enter);
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(18.0),
                    color: Colors.blue,
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
                          Icons.keyboard_arrow_down,
                        ),
                      ),
                      onTap: () async {
                        await onEmit(context, menu_down);
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    borderRadius: BorderRadius.circular(18.0),
                    color: Colors.blue,
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
                          Icons.keyboard_arrow_right,
                        ),
                      ),
                      onTap: () async {
                        await onEmit(context, menu_right);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Material(
              borderRadius: BorderRadius.circular(18.0),
              color: Colors.white,
              child: InkWell(
                borderRadius: BorderRadius.circular(18.0),
                splashColor: Colors.white30,
                child: Container(
                  width: 56,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    color: Colors.transparent,
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Guide',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                onTap: () async {
                  await onEmit(context, guide);
                },
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Material(
              borderRadius: BorderRadius.circular(18.0),
              color: Colors.white,
              child: InkWell(
                borderRadius: BorderRadius.circular(18.0),
                splashColor: Colors.white30,
                child: Container(
                  width: 56,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    color: Colors.transparent,
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Back',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                onTap: () async {
                  await onEmit(context, back);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
