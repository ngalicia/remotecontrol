# Remote Control

Remote control for Samnsung TV, developed with Flutter.

## Screenshots

- Running on Android

<img src="https://github.com/ngalicia/remotecontrol/raw/main/img/1.png" width="360" height="800"/>

## Dependencies

Add in pubspec.yaml

```yaml
    ir_sensor_plugin: ^0.3.0
```

## Permissions

Add in \android\app\src\debug\AndroidManifest.xml

```xml
    <uses-permission android:name="android.permission.TRANSMIT_IR" />
    <uses-permission android:name="android.permission.VIBRATE"/>
```

## Build release

```bash
    flutter build apk --release
```

Output directory: \build\app\outputs\flutter-apk\app-release.apk
