import 'package:flutter/material.dart';
import 'package:med_pay/Features/Profile/Widgets/select_bank.dart';
import 'package:med_pay/Features/Profile/Widgets/sync_conf.dart';

class LinkBank extends StatefulWidget {
  const LinkBank({Key? key}) : super(key: key);

  @override
  State<LinkBank> createState() => _LinkBankState();
}

class _LinkBankState extends State<LinkBank> {
  String userID = '';
  TextEditingController bankNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text(
              'Link your \nbank account',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Bank Name",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    controller: bankNameController,
                    readOnly: true,
                    decoration: InputDecoration(
                      hintText: 'Select Bank',
                      border: OutlineInputBorder(),
                      suffixIcon: GestureDetector(
                        onTap: () async {
                          final selectedBank = await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SelectBank(),
                            ),
                          );
                          if (selectedBank != null) {
                            bankNameController.text = selectedBank;
                          }
                        },
                        child: Icon(Icons.keyboard_arrow_right),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Add your bank details'),
                SizedBox(height: 20), // Adjust the height as needed
                Text(
                  "User ID/Customer ID",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter user ID',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    setState(() {
                      userID = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 30),
            Center(
              child: Container(
                width: 335,
                height: 60,
                child: ElevatedButton(
                  onPressed: bankNameController.text.isNotEmpty && userID.isNotEmpty
                      ? () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SyncConfirmation()),
                    );
                  }
                      : null,
                  child: Text(
                    "Link to Bank",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent.shade700,
                    side: BorderSide(
                      color: Colors.blueAccent.shade700,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}