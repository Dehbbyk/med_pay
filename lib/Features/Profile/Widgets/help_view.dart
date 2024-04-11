import 'package:flutter/material.dart';

class HelpView extends StatefulWidget {
  const HelpView({Key? key}) : super(key: key);

  @override
  State<HelpView> createState() => _HelpViewState();
}

class _HelpViewState extends State<HelpView> {
  List<bool> _expanded = [false, false, false, false, false]; // Track if each question is expanded

  // List of question-answer pairs
  List<Map<String, String>> faqs = [
    {
      'question': 'How often should I check dashboard for updates?',
      'answer': 'The frequency of the dashboard may vary '
          'depending on your specific needs. Some '
          'users may check the dashboard daily, while '
          'others may check it less frequently based on '
          'their workflow and objectives.'
    },
    {
      'question': 'Is my payment information secure?',
      'answer': 'Yes, it is.'
    },
    {
      'question': 'Is there a cost for using the services here?',
      'answer': 'You can contact our customer support by calling +23482000078.'
    },
    {
      'question': 'How do I interpret data on the dashboard?',
      'answer': 'Click on the Analytics page for more information'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Help/Support",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Frequently asked questions",
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              itemCount: faqs.length,
              itemBuilder: (context, index) {
                return ExpansionTile(
                  title: Text(faqs[index]['question'] ?? ''),
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        faqs[index]['answer'] ?? '',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ],
                );
              },
            ),
            SizedBox(height: 10),
            Text(
              "Still have questions?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text("If you are unable to find answers to your questions in"
                "\nour FAQ section, contact our customer support via"
                ),
            Text(
                "+23482000078",
              style: TextStyle(
                color: Colors.lightBlue
              ),
            )
          ],
        ),
      ),
    );
  }
}