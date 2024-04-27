import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TimeOfDay time = TimeOfDay.now();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "setting \n",
            ),
            Text(
              "${time.hour}:${time.minute}",
            ),
            ElevatedButton(
              onPressed: () async {
                final TimeOfDay? timeOfDay = await showTimePicker(
                  context: context,
                  initialTime: time,
                  initialEntryMode: TimePickerEntryMode.dial,
                );
              },
              child: const Text("time"),
            )
          ],
        ),
      ),
    );
  }
}
