import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:mobx/mobx.dart';

part 'setting_store.g.dart';

class SettingStore = _SettingStore with _$SettingStore;

abstract class _SettingStore with Store {
  @observable
  ThemeMode? currentMode =
      SchedulerBinding.instance.platformDispatcher.platformBrightness ==
              Brightness.light
          ? ThemeMode.light
          : ThemeMode.dark;

  @observable
  int currentDevice = 1;

  @action
  Future<void> switchTheme() async {
    if (currentMode == ThemeMode.light) {
      currentMode = ThemeMode.dark;
    } else {
      currentMode = ThemeMode.light;
    }
  }

  @action
  Future<void> selectDevice(int newDevice) async {
    print("change device");
    currentDevice = newDevice;
  }
}
