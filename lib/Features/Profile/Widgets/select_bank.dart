import 'package:flutter/material.dart';
import 'package:med_pay/Features/Profile/Widgets/search_view.dart';

class SelectBank extends StatelessWidget {
  const SelectBank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(25.0), // Adjust the height as needed
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
              height: 230,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Frequently used bank',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Align to the middle
                    children: [
                      Column(
                        children: [
                          IconButton(
                            onPressed: (){
                              Navigator.pop(context, 'GT Bank');
                            },
                            icon: Image.asset('assets/images/gt_bank.png', height: 44, width: 44,),
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
                            icon: Image.asset('assets/images/first_bank.png', height: 44, width: 44,),
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
                            icon: Image.asset('assets/images/zenith_bank.png', height: 44, width: 44,),
                          ),
                          Text('Zenith Bank'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Align to the middle
                    children: [
                      Column(
                        children: [
                          IconButton(
                            onPressed: (){
                              Navigator.pop(context, 'Fidelity Bank');
                            },
                            icon: Image.asset('assets/images/fidelity_bank.png', height: 44, width: 44,),
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
                            icon: Image.asset('assets/images/polaris_bank.png',height: 44, width: 44,),
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
                            icon: Image.asset('assets/images/union_bank.png', height: 44, width: 44,),
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
              padding: const EdgeInsets.only(left: 16.0, right: 16.0), // Adjust the left and right padding as needed
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Other Banks',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  ListTile(
                    leading: Image.asset('assets/images/citi_bank.png', height: 44, width: 44,),
                    title: Text('City Bank'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset('assets/images/fcmb_bank.png', height: 44, width: 44,),
                    title: Text('First City Monument Bank'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset('assets/images/heritage_bank.png', height: 44, width: 44,),
                    title: Text('Heritage Bank'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset('assets/images/keystone_bank.png', height: 44, width: 44,),
                    title: Text('Keystone Bank'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset('assets/images/monie_bank.png', height: 44, width: 44,),
                    title: Text('Moniepoint Bank'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset('assets/images/std_bank.png', height: 44, width: 44,),
                    title: Text('Standard Chartered'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset('assets/images/stanbic_bank.png', height: 44, width: 44,),
                    title: Text('Stanbic IBTC'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset('assets/images/sterling_bank.png', height: 44, width: 44,),
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