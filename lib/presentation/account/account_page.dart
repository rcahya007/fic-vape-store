import 'package:flutter/material.dart';
import 'package:vape_store/common/global_data.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                color: Color(0xffE5386D),
              ),
              height: 294,
            ),
            Positioned(
              top: 60,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          color: Colors.white,
                          Icons.settings,
                          size: 40,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Settings',
                          style: poppinsWhite.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 28,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(16),
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: colorBlack.withOpacity(0.4),
                                spreadRadius: 5,
                                blurRadius: 7)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 25,
                          horizontal: 24,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.account_circle_rounded,
                                  size: 40,
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  'Yennefer Doe',
                                  style: poppinsBlack.copyWith(
                                    fontSize: 18,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            const Divider(),
                            const SizedBox(
                              height: 24,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Account Settings',
                                  style: poppinsBlack.copyWith(
                                    fontSize: 18,
                                    color: colorBlack.withOpacity(0.4),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
