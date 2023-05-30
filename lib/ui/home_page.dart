import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:technical_loanmarket/utils/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyBackground,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            //background loan market logo
            Container(
              width: MediaQuery.of(context).size.width,
              color: primaryColor,
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Image.asset("assets/images/logo_loan_market.png",
                    fit: BoxFit.fill),
              ),
            ),

            // screen
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 47.5, horizontal: 25.75),
              child: Column(
                children: [
                  //Appbar
                  const AppbarWidget(),

                  //Card Welcome back and user information
                  Padding(
                    padding: const EdgeInsets.only(top: 55, bottom: 20),
                    child: SizedBox(
                      height: 175,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 35),
                            height: 120,
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 35.0),
                            child: CardUserInfo(),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Image.asset(
                              "assets/images/logo_profile.png",
                              height: 70,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  //Card information like contact, loan. product and bank
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      border: Border.all(color: greyColor3),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18.0, vertical: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/icon_stack.png",
                                      height: 30,
                                    ),
                                    const SizedBox(width: 30.0),
                                    Column(
                                      children: [
                                        Text("Contact", style: text13),
                                        const SizedBox(height: 7.0),
                                        Text("41", style: text13),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30.0, right: 24.0),
                                child: Container(
                                  height: 60,
                                  width: 1,
                                  decoration: BoxDecoration(color: greyColor3),
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/icon_file.png",
                                      height: 30,
                                    ),
                                    const SizedBox(width: 30.0),
                                    Column(
                                      children: [
                                        Text("Loan", style: text13),
                                        const SizedBox(height: 7.0),
                                        Text("50", style: text13),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 284,
                            height: 1,
                            decoration: BoxDecoration(color: greyColor3),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/icon_bag.png",
                                      height: 30,
                                    ),
                                    const SizedBox(width: 30.0),
                                    Column(
                                      children: [
                                        Text("Product", style: text13),
                                        const SizedBox(height: 7.0),
                                        Text("73", style: text13),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30.0, right: 24.0),
                                child: Container(
                                  height: 60,
                                  width: 1,
                                  decoration: BoxDecoration(color: greyColor3),
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/icon_achievment.png",
                                      height: 30,
                                    ),
                                    const SizedBox(width: 30.0),
                                    Column(
                                      children: [
                                        Text("Bank", style: text13),
                                        const SizedBox(height: 7.0),
                                        Text("28", style: text13),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),

                  // Card Pinjaman
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      border: Border.all(color: greyColor3),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 16.0, bottom: 9.0, left: 17.0, right: 17.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Pinjaman Disetujui", style: text13),
                          const SizedBox(height: 5),
                          RichText(
                            text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: [
                                TextSpan(text: "2", style: text18),
                                TextSpan(
                                    text: " / 5 Pinjaman",
                                    style: text12.copyWith(
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                          Divider(
                            color: greyColor3,
                            thickness: 1,
                          ),
                          Text("Target", style: text13),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 2.0),
                            child: Text("280%", style: text18),
                          ),
                          Text("Rp14.000.000.000 / 5.000.000.000",
                              style:
                                  text12.copyWith(fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ),
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

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // widget for hamburger bar
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            log("hamburger bar get pressed");
          },
          icon: Icon(
            Icons.menu,
            color: blackColor,
            size: 30.0,
          ),
        ),
        Row(
          children: [
            InkWell(
              onTap: () {
                log("notification");
              },
              child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(100))),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset("assets/images/icon_bell.png"),
                  )),
            ),
            const SizedBox(width: 9.0),
            InkWell(
              onTap: () {
                log("settings");
              },
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: const BorderRadius.all(Radius.circular(100))),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset("assets/images/icon_settings.png"),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class CardUserInfo extends StatelessWidget {
  const CardUserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: whiteColor,
        border: Border.all(color: greyColor3),
        borderRadius: const BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(height: 21.0),
            Text(
              "Welcome Back,",
              style: text15,
            ),
            const SizedBox(height: 2),
            Text(
              "Yohannes Affandy (Jojo)",
              style: text13,
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                //Bagian kiri card
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/icon_briefcase.png",
                            width: 15.0,
                          ),
                          const SizedBox(width: 10.0),
                          Text(
                            "Loan Market Office Dev",
                            style: text10.copyWith(fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15.0),
                      Row(
                        children: [
                          Text(
                            "ID",
                            style: text10,
                          ),
                          const SizedBox(width: 10.0),
                          Text(
                            "  LM9990001",
                            style: text10.copyWith(fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 15),
                  child: Container(
                    height: 50,
                    width: 1,
                    color: greyColor2,
                  ),
                ),
                //Bagian kanan card
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/icon_message.png",
                            width: 15.0,
                          ),
                          const SizedBox(width: 10.0),
                          Text(
                            "it@loanmarket.co.id",
                            style: text10.copyWith(fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15.0),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/icon_phone.png",
                            width: 15.0,
                          ),
                          const SizedBox(width: 10.0),
                          Text(
                            "6281234567890",
                            style: text10.copyWith(fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
