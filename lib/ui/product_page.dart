import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:technical_loanmarket/ui/home_page.dart';

import '../utils/theme.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyBackground,

      // parent widget for tabbar
      body: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Stack(
          children: [
            // background logo loan market
            Container(
              width: MediaQuery.of(context).size.width,
              color: primaryColor,
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Image.asset("assets/images/logo_loan_market.png",
                    fit: BoxFit.fill),
              ),
            ),

            // layout for notification and also tabbar
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                      top: 47.5, right: 25.75, left: 25.75, bottom: 5),
                  child: AppbarWidget(),
                ),
                const SizedBox(height: 55),
                Container(
                  color: whiteColor,
                  height: 55,
                  child: TabBar(
                    indicatorColor: primaryColor,
                    labelColor: blackColor,
                    labelStyle: text15.copyWith(fontWeight: FontWeight.w700),
                    unselectedLabelStyle:
                        text15.copyWith(fontWeight: FontWeight.w500),
                    tabs: const [
                      Tab(
                        text: "Bank",
                      ),
                      Tab(
                        text: "Developer",
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(children: [
                    // Content for  first tab
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 19.0),
                        child: Column(
                          children: [
                            // form for search nama bank
                            Form(
                              child: SizedBox(
                                height: 35,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Cari nama bank",
                                    hintStyle:
                                        text12.copyWith(color: greyColor2),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: blackColor),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                    ),
                                    suffixIcon: const Icon(Icons.search),
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 0.0, horizontal: 14.0),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: blackColor),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            //
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Button tambah
                                  SizedBox(
                                    height: 35.0,
                                    width: 130,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        log("add button");
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: secondaryColor,
                                          side: BorderSide(color: greyColor3)),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.add,
                                            color: whiteColor,
                                            size: 18,
                                          ),
                                          const SizedBox(width: 22),
                                          Text("Tambah", style: text13),
                                        ],
                                      ),
                                    ),
                                  ),

                                  // button sort
                                  SizedBox(
                                    height: 35.0,
                                    width: 130,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        log("sort button");
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: whiteColor,
                                          side: BorderSide(color: greyColor3)),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            "assets/images/icon_sort.png",
                                            height: 13,
                                          ),
                                          const SizedBox(width: 36.0),
                                          Text("Sort",
                                              style: text13.copyWith(
                                                  color: blackColor)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // container for dropdown
                            Container(
                              height: 35,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  border: Border.all(color: greyColor3)),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 18.0, right: 17.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "ALL",
                                      style: text13,
                                    ),
                                    Image.asset(
                                      "assets/images/icon_down.png",
                                      height: 20,
                                      width: 20,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 27),

                            // content for showing the bank
                            SizedBox(
                              height: 330,
                              child: ListView.builder(
                                padding: EdgeInsets.zero,
                                itemCount: 2,
                                shrinkWrap: true,
                                // change the scrolling direction from vertical to horizontal
                                scrollDirection: Axis.horizontal,
                                physics: const BouncingScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 17.0),
                                    child: Card(
                                      elevation: 4.0,
                                      child: Container(
                                        height: 330,
                                        width: 280,
                                        decoration: BoxDecoration(
                                            color: whiteColor,
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(5))),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15, right: 15, top: 9),
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                "assets/images/logo_mandiri.png",
                                                height: 70,
                                                width: 120,
                                              ),
                                              Row(
                                                children: [
                                                  // rating
                                                  Expanded(
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          "Rating : ",
                                                          style: text10.copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color:
                                                                  greyColor3),
                                                        ),

                                                        // star review
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 6.0,
                                                                  bottom: 3),
                                                          child: Row(
                                                            children: [
                                                              Image.asset(
                                                                "assets/images/icon_star_active.png",
                                                                height: 20,
                                                                width: 20,
                                                              ),
                                                              Image.asset(
                                                                "assets/images/icon_star_active.png",
                                                                height: 20,
                                                                width: 20,
                                                              ),
                                                              Image.asset(
                                                                "assets/images/icon_star_active.png",
                                                                height: 20,
                                                                width: 20,
                                                              ),
                                                              Image.asset(
                                                                "assets/images/icon_star_active.png",
                                                                height: 20,
                                                                width: 20,
                                                              ),
                                                              Image.asset(
                                                                "assets/images/icon_star_inactive.png",
                                                                height: 20,
                                                                width: 20,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Text(
                                                          "14 Review",
                                                          style: text8.copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        )
                                                      ],
                                                    ),
                                                  ),

                                                  // for divided between rating and user
                                                  Container(
                                                    width: 2,
                                                    height: 60,
                                                    color: blackColor,
                                                  ),

                                                  // User
                                                  Expanded(
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          "User : ",
                                                          style: text10.copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color:
                                                                  greyColor3),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 8.0,
                                                                  bottom: 9),
                                                          child: Text(
                                                            "220",
                                                            style:
                                                                text10.copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          "User yearly",
                                                          style: text8.copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),

                                              // title for the event
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 18),

                                                // Using rich text for make a different style on every text/string
                                                child: RichText(
                                                  text: TextSpan(
                                                    text: "Mandiri ",
                                                    style: text12.copyWith(
                                                        color: blackColor),
                                                    children: [
                                                      TextSpan(
                                                          text:
                                                              "Bunga Special Tengah Imlek 2023",
                                                          style: text12.copyWith(
                                                              color:
                                                                  primaryColor)),
                                                    ],
                                                  ),
                                                ),
                                              ),

                                              // list of component
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Image.asset(
                                                            "assets/images/icon_chart.png",
                                                            width: 13.0,
                                                          ),
                                                          const SizedBox(
                                                              width: 5),
                                                          Text(
                                                            "Fix Rate (Year): 3.88",
                                                            style: text8.copyWith(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color:
                                                                    greyColor5),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 14.0),
                                                        child: Row(
                                                          children: [
                                                            Image.asset(
                                                              "assets/images/icon_clock.png",
                                                              width: 13.0,
                                                            ),
                                                            const SizedBox(
                                                                width: 5),
                                                            Text(
                                                              "Max Tenor: 12",
                                                              style: text8.copyWith(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color:
                                                                      greyColor5),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Image.asset(
                                                            "assets/images/icon_timer.png",
                                                            width: 13.0,
                                                          ),
                                                          const SizedBox(
                                                              width: 5),
                                                          Text(
                                                            "Loan to Value: 1",
                                                            style: text8.copyWith(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color:
                                                                    greyColor5),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(width: 14.0),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Image.asset(
                                                            "assets/images/icon_shield.png",
                                                            width: 13.0,
                                                          ),
                                                          const SizedBox(
                                                              width: 5),
                                                          Text(
                                                            "Jaminan: Ruko, Rukan, Rumah,\n Apartemen",
                                                            style: text8.copyWith(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color:
                                                                    greyColor5),
                                                          )
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 14.0),
                                                        child: Row(
                                                          children: [
                                                            Image.asset(
                                                              "assets/images/icon_profile.png",
                                                              width: 13.0,
                                                            ),
                                                            const SizedBox(
                                                                width: 5),
                                                            Text(
                                                              "Target: Karyawan, Pengusaha",
                                                              style: text8.copyWith(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color:
                                                                      greyColor5),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Image.asset(
                                                            "assets/images/icon_money.png",
                                                            width: 13.0,
                                                          ),
                                                          const SizedBox(
                                                              width: 5),
                                                          Text(
                                                            "Komisi: 1",
                                                            style: text8.copyWith(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color:
                                                                    greyColor5),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 19),
                                              Container(
                                                height: 30,
                                                width: 90,
                                                decoration: BoxDecoration(
                                                    color: whiteColor,
                                                    border: Border.all(
                                                        color: greyColor3),
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                            Radius.circular(
                                                                3))),
                                                child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          backgroundColor:
                                                              whiteColor,
                                                          elevation: 4.0),
                                                  onPressed: () {},
                                                  child: Text(
                                                    "Detail",
                                                    style: text13.copyWith(
                                                        color: primaryColor),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Content for  second tab
                    const Center(
                      child: Text("It's Other Developer"),
                    ),
                  ]),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
