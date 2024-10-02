import 'package:flutter/material.dart';
import 'home_page.dart';

class RewardsPage extends StatelessWidget {
  // Dummy list of rewards based on activity
  final List<Map<String, String>> rewards = [
    {
      'title': 'Bronze Responder',
      'date': 'July 15, 2024',
      'description': 'Responded to 5 SOS calls and helped secure safety.',
    },
    {
      'title': 'Silver Guardian',
      'date': 'August 1, 2024',
      'description': 'Ensured safety during 10 potential danger alerts.',
    },
    {
      'title': 'Gold Protector',
      'date': 'September 5, 2024',
      'description': 'Successfully resolved 20 SOS alerts and helped women reach safe locations.',
    },
    {
      'title': 'Platinum Savior',
      'date': 'September 15, 2024',
      'description': 'Assisted in 30 active alerts and secured emergency aid.',
    },
    {
      'title': 'Diamond Hero',
      'date': 'October 2, 2024',
      'description': 'Safeguarded women from harm through quick response in 50 alerts.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text('Rewards'),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Profile button action
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Profile button pressed')),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: rewards.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Card(
              child: ListTile(
                leading: Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 40,
                ),
                title: Text(rewards[index]['title'] ?? ''),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Date: ${rewards[index]['date']}'),
                    SizedBox(height: 5),
                    Text(rewards[index]['description'] ?? ''),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
