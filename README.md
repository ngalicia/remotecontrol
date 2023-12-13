# remotecontrol

Remote control for Samnsung TV, developed with Flutter.

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
