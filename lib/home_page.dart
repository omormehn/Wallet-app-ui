// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app/utils/card.dart';
import 'package:wallet_app/utils/options.dart';
import 'package:wallet_app/utils/quick_btn.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  //pagecontroller
  final _controller = PageController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green[600],
          child: Icon(Icons.qr_code_scanner_rounded, color:Colors.white ,),
          shape: CircleBorder(),
        ),
          
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          
        bottomNavigationBar: BottomAppBar(
          color: Colors.grey[200],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 35,
                  color: Colors.green[300],
                  ),
              ), 
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  size: 35,
                  ),
                ),
            ],
          ),
        ),
        body: SafeArea(
          
          child: Column(
            
            children: [
              SizedBox(
                height: 20,
              ),
              //app bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    const Row(
                      children: [
                        Text(
                          'My',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.w900),
                        ),
                        Text(
                          ' Cards',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                      ],
                    ),

                    //plus sign
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              //cards
              Container(
                height: 200,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children:[
                    MyCard(
                      balance: 4203.21,
                      cardNumber: 12239282,
                      expiryMonth: '03',
                      expiryYear: 23,
                      cardHolderName: 'John Doe',
                      color: Colors.green[900]
                    ),
                    MyCard(
                      balance: 2303.93,
                      cardNumber: 28391034,
                      expiryMonth: '05',
                      expiryYear: 38
                      ,
                      cardHolderName: 'Favour Useni',
                      color: Colors.blue[900]
                    ),
                    MyCard(
                      balance: 3728.02,
                      cardNumber: 12239282,
                      expiryMonth: '02',
                      expiryYear: 35,
                      cardHolderName: 'Nathan Useni',
                      color: Colors.deepPurple[900]
                    ),
                    MyCard(
                      balance: 1729.58,
                      cardNumber: 19284950,
                      expiryMonth: '10',
                      expiryYear: 24,
                      cardHolderName: 'Janet Useni',
                      color: Colors.yellow[900]
                    ),
                    
                ] 
              )
            ),
            SizedBox(height: 25,),

            SmoothPageIndicator(
              controller: _controller, 
              count: 4,
              effect: ExpandingDotsEffect(
                dotHeight: 12.0,
                dotWidth: 12.0,
                spacing: 8.0,
                activeDotColor: Colors.black,
                
              ),
            ),


            SizedBox(height: 25.0,),

            //buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //send button
                QuickBtn(
                  image: Image.asset('lib/icons/send.png'),
                  text: 'Send',
                ),

                //pay button
                 QuickBtn(
                  image: Image.asset('lib/icons/payment.png'),
                  text: 'Pay',
                ),

                //bills button
                 QuickBtn(
                  image: Image.asset('lib/icons/bill.png'),
                  text: 'Bills',
                ),
              ],
            ), 
            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  
                  //statistics
                  HomeOptions(
                    imagePath: 'lib/icons/analysis.png', 
                    title: 'Statistics', 
                    subtitle: 'Payments and income'
                  ),
              
                  SizedBox(height: 20,),
              
                  //transc history
                  HomeOptions(
                    imagePath: 'lib/icons/transaction.png',
                    title: 'Transactions',
                    subtitle: 'Transaction history'
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
                          

                            
                            
