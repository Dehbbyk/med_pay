import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:med_pay/Features/Profile/Widgets/search_view.dart';

class SelectBank extends StatelessWidget {
  const SelectBank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30.0), // Adjust the height as needed
        child: AppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SearchView(),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Frequently used bank',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          IconButton(
                            onPressed: (){
                              Navigator.pop(context, 'GT Bank');
                            },
                            icon: Image.asset('assets/images/gt_bank.png'),
                          ),
                          Text('GT Bank'),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: (){
                              Navigator.pop(context, 'First Bank');
                            },
                            icon: Image.asset('assets/images/first_bank.png'),
                          ),
                          Text('First Bank'),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: (){
                              Navigator.pop(context, 'Zenith Bank');
                            },
                            icon: Image.asset('assets/images/zenith_bank.png'),
                          ),
                          Text('Zenith Bank'),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          IconButton(
                            onPressed: (){
                              Navigator.pop(context, 'Fidelity Bank');
                            },
                            icon: Image.asset('assets/images/fidelity_bank.png'),
                          ),
                          Text('Fidelity Bank'),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: (){
                              Navigator.pop(context, 'Polaris Bank');
                            },
                            icon: Image.asset('assets/images/polaris_bank.png'),
                          ),
                          Text('Polaris Bank'),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: (){
                              Navigator.pop(context, 'Union Bank');
                            },
                            icon: Image.asset('assets/images/union_bank.png'),
                          ),
                          Text('Union Bank'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0), // Adjust the left padding as needed
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Other Banks',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  ListTile(
                    leading: Image.asset('assets/images/citi_bank.png'),
                    title: Text('City Bank'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset('assets/images/fcmb_bank.png'),
                    title: Text('First City Monument Bank'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset('assets/images/heritage_bank.png'),
                    title: Text('Heritage Bank'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset('assets/images/keystone_bank.png'),
                    title: Text('Keystone Bank'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset('assets/images/monie_bank.png'),
                    title: Text('Moniepoint Bank'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset('assets/images/std_bank.png'),
                    title: Text('Standard Chartered'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset('assets/images/stanbic_bank.png'),
                    title: Text('Stanbic IBTC'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset('assets/images/sterling_bank.png'),
                    title: Text('Sterling Bank'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}