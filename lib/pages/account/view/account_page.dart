import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../home/widgets/account_container.dart';
import '../../new_account/view/view.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Example accounts (can be dynamic later)
    final accounts = [
      {'title': 'Wallet', 'value': '1,000'},
      {'title': 'BPI', 'value': '5,000'},
      {'title': 'Savings', 'value': '10,000'},
    ];

    const double tileHeight = 45;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'List of accounts',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Icon(Icons.settings),
            ],
          ),

          // Grid layout for accounts + button
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: accounts.length + 1, // extra for button
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              mainAxisExtent: tileHeight, // consistent tile height
            ),
            itemBuilder: (context, index) {
              if (index < accounts.length) {
                final account = accounts[index];
                return SizedBox(
                  height: tileHeight,
                  child: AccountContainer(
                    title: account['title']!,
                    value: account['value']!,
                  ),
                );
              } else {
                // Add account button styled like AccountContainer with label
                return SizedBox(
                  height: tileHeight,
                  child: GestureDetector(
                    onTap: () => context.push(NewAccountPage.route),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.blue, width: 2),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Add Account',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.add,
                            size: 16,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
