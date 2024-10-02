import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Alert has been started',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Show a pop-up box asking for a 4-digit pin when "I'm Safe" is clicked
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Enter 4-Digit PIN'),
                      content: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Enter your PIN',
                        ),
                        maxLength: 4,
                      ),
                      actions: [
                        TextButton(
                          child: Text('Confirm'),
                          onPressed: () {
                            Navigator.pop(context);
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('PIN verified, alert ended.')),
                            );
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text("I'm Safe"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Show pop-up box stating "Double alert activated" when "I'm Not Safe" is clicked
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Double Alert Activated'),
                      content: Text('Your alert level has been escalated.'),
                      actions: [
                        TextButton(
                          child: Text('OK'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text("I'm Not Safe"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Correct background color setting
              ),
            ),
          ],
        ),
      ),
    );
  }
}
