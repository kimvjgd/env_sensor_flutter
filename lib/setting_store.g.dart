// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SettingStore on _SettingStore, Store {
  late final _$currentModeAtom =
      Atom(name: '_SettingStore.currentMode', context: context);

  @override
  ThemeMode? get currentMode {
    _$currentModeAtom.reportRead();
    return super.currentMode;
  }

  @override
  set currentMode(ThemeMode? value) {
    _$currentModeAtom.reportWrite(value, super.currentMode, () {
      super.currentMode = value;
    });
  }

  late final _$currentDeviceAtom =
      Atom(name: '_SettingStore.currentDevice', context: context);

  @override
  int get currentDevice {
    _$currentDeviceAtom.reportRead();
    return super.currentDevice;
  }

  @override
  set currentDevice(int value) {
    _$currentDeviceAtom.reportWrite(value, super.currentDevice, () {
      super.currentDevice = value;
    });
  }

  late final _$switchThemeAsyncAction =
      AsyncAction('_SettingStore.switchTheme', context: context);

  @override
  Future<void> switchTheme() {
    return _$switchThemeAsyncAction.run(() => super.switchTheme());
  }

  late final _$selectDeviceAsyncAction =
      AsyncAction('_SettingStore.selectDevice', context: context);

  @override
  Future<void> selectDevice(int newDevice) {
    return _$selectDeviceAsyncAction.run(() => super.selectDevice(newDevice));
  }

  @override
  String toString() {
    return '''
currentMode: ${currentMode},
currentDevice: ${currentDevice}
    ''';
  }
}
