import 'package:flutter/material.dart';
import 'home_page.dart';

class AwarenessPage extends StatelessWidget {
  // List of awareness programs with details
  final List<Map<String, String>> awarenessPrograms = [
    {
      'eventName': 'Women Safety Workshop',
      'eventTime': 'October 10, 2024 - 10:00 AM',
      'description': 'A workshop aimed at educating both men and women on safety measures, self-defense techniques, and emergency response procedures.',
      'score': '10 points'
    },
    {
      'eventName': 'Cyber Safety Awareness',
      'eventTime': 'November 5, 2024 - 2:00 PM',
      'description': 'An interactive session focused on raising awareness about cyber safety for women, discussing online threats and protective measures.',
      'score': '15 points'
    },
    {
      'eventName': 'Community Self-Defense Training',
      'eventTime': 'December 12, 2024 - 9:00 AM',
      'description': 'This event offers physical self-defense training for women, with opportunities for male participants to learn how to support and respond.',
      'score': '20 points'
    },
    {
      'eventName': 'Emergency Response Simulation',
      'eventTime': 'January 22, 2025 - 11:00 AM',
      'description': 'A live simulation event where participants practice responding to real-world emergencies, helping both men and women develop quick, effective responses.',
      'score': '25 points'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text('Awareness'),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Profile button pressed')),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: awarenessPrograms.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Card(
              child: ListTile(
                title: Text(awarenessPrograms[index]['eventName'] ?? ''),
                subtitle: Text(awarenessPrograms[index]['eventTime'] ?? ''),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text(awarenessPrograms[index]['eventName'] ?? ''),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Time: ${awarenessPrograms[index]['eventTime']}'),
                            SizedBox(height: 10),
                            Text(awarenessPrograms[index]['description'] ?? ''),
                            SizedBox(height: 20),
                            Text('Reward: ${awarenessPrograms[index]['score']}'),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Applied for ${awarenessPrograms[index]['eventName']}')),
                              );
                            },
                            child: Text('Apply'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
