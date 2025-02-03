import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Hey, Howard",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Welcome back",
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.754),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Total Budget Amount",
                  style: TextStyle(
                    fontSize: 17,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "\$5 194 482",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      text: "Transfer",
                      bgcolor: Colors.amber,
                      textColor: Colors.black,
                    ),
                    Button(
                      text: "Request",
                      bgcolor: Color.fromARGB(255, 48, 48, 46),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Wallets",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        color: Color.fromARGB(232, 255, 255, 255),
                        fontSize: 15,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                CurrencyCard(
                  name: "Euro",
                  code: "EUR",
                  amount: "3399393",
                  icon: Icons.euro_sharp,
                  is_inverted: false,
                  order: 1,
                ),
                CurrencyCard(
                  name: "Bitcion",
                  code: "BTC",
                  amount: "50,330",
                  icon: Icons.currency_bitcoin_sharp,
                  is_inverted: true,
                  order: 2,
                ),
                CurrencyCard(
                  name: "Dollar",
                  code: "USD",
                  amount: "130,203",
                  icon: Icons.attach_money_sharp,
                  is_inverted: false,
                  order: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
