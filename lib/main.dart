import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ir_sensor_plugin/ir_sensor_plugin.dart';

import 'channel_panel.dart';
import 'media_panel.dart';
import 'menu_panel.dart';
import 'options_panel.dart';
import 'power_panel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'TV Remote'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _hasIrEmitter = false;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    bool hasIrEmitter;

    try {
      hasIrEmitter = await IrSensorPlugin.hasIrEmitter;
    } on PlatformException {
      hasIrEmitter = false;
    }

    if (!mounted) return;

    setState(() {
      _hasIrEmitter = hasIrEmitter;
    });
  }

  Future<void> emit(BuildContext context, String code) async {
    HapticFeedback.lightImpact();
    if (_hasIrEmitter) {
      final String result = await IrSensorPlugin.transmitString(pattern: code);
      debugPrint('Emitting Signal: $result');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Not has Ir emitter'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff090909),
      appBar: AppBar(
        backgroundColor: const Color(0xff1f4e79),
        leading: const Icon(
          Icons.tv,
          color: Colors.white,
        ),
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        titleSpacing: 2.0,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PowerPanel(onEmit: emit),
              const SizedBox(
                height: 20,
              ),
              MenuPanel(onEmit: emit),
              const SizedBox(
                height: 20,
              ),
              ChannelPanel(onEmit: emit),
              const SizedBox(
                height: 20,
              ),
              MediaPanel(onEmit: emit),
              const SizedBox(
                height: 20,
              ),
              OptionsPanel(onEmit: emit),
            ],
          ),
        ),
      ),
    );
  }
}
