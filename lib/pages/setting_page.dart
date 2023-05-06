import 'package:env_sensor/setting_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:numberpicker/numberpicker.dart';

class SettingPage extends StatelessWidget {
  final SettingStore store;

  const SettingPage({Key? key, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          'Settings',
        ),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.maybePop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: Text('Device'),
            trailing: Observer(builder: (_) => Text('${store.currentDevice}')),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (ctx) => Observer(
                        builder: (_) => AlertDialog(
                          content: NumberPicker(
                            value: store.currentDevice,
                            minValue: 1,
                            maxValue: 30,
                            itemCount: 5,
                            onChanged: (value) => store.selectDevice(value),
                          ),
                          actionsAlignment: MainAxisAlignment.center,
                          actions: [
                            TextButton(
                              child: Text('OK'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        ),
                      ));
            },
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: Text('Open Source Licenses'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => LicensePage()));
            },
          ),
          Divider(
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}

/*

// App Theme mode
device # selection (1~30)
License

 */
