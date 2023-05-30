import 'package:flutter/material.dart';
import 'package:technical_loanmarket/models/contact_model.dart';
import 'package:technical_loanmarket/ui/detail_contact_page.dart';
import 'package:technical_loanmarket/ui/home_page.dart';

import '../utils/theme.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyBackground,

      // parent widget for tab bar
      body: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Stack(
          children: [

            // background image loan market
            Container(
              width: MediaQuery.of(context).size.width,
              color: primaryColor,
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Image.asset("assets/images/logo_loan_market.png",
                    fit: BoxFit.fill),
              ),
            ),

            // this is the content for contact page
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                      top: 47.5, right: 25.75, left: 25.75, bottom: 5),
                  child: AppbarWidget(),
                ),
                const SizedBox(height: 55),

                // for tabbar
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
                        text: "My Contact",
                      ),
                      Tab(
                        text: "Other Contact",
                      ),
                    ],
                  ),
                ),

                // section for content inside the tabbar
                Expanded(
                  child: TabBarView(children: [
                    // Content for  first tab (left tab)
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 19.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  // Form for search field
                                  child: Form(
                                    child: SizedBox(
                                      height: 35,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: "Cari berdasarkan nama",
                                          hintStyle: text12.copyWith(
                                              color: greyColor2),
                                          border: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: blackColor),
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(5),
                                            ),
                                          ),
                                          suffixIcon: const Icon(Icons.search),
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 0.0,
                                                  horizontal: 14.0),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: blackColor),
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(5),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 20.0),
                                SizedBox(
                                  height: 35.0,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: secondaryColor,
                                        side: BorderSide(color: blackColor)),
                                    child: Text("Tambah", style: text13),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 19),

                            // List of contact
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: SingleChildScrollView(
                                child: ListView.builder(
                                  padding: EdgeInsets.zero,
                                  itemCount: contactList.length,
                                  physics: const BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    // already declare the contactList on different file
                                    var itemListContact = contactList[index];
                                    return InkWell(
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                          builder: (context) {
                                            return DetailContactPage(
                                              email: itemListContact["email"],
                                              jenisKel: itemListContact["jenisKel"],
                                              nama: itemListContact["nama"],
                                              phoneNumber: itemListContact["noTelepon"],
                                            );
                                          },
                                        ));
                                      },
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 12),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: whiteColor,
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(12),
                                              ),
                                              border: Border.all(
                                                  color: greyColor3)),
                                          height: 82.0,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 8.0,
                                                bottom: 9.0,
                                                left: 20.0,
                                                right: 20.0),
                                            child: Row(
                                              children: [
                                                CircleAvatar(
                                                  maxRadius: 45,
                                                  backgroundColor: thridColor,
                                                  child: Text(
                                                    itemListContact["inisial"]
                                                        .toString(),
                                                    style: text20.copyWith(
                                                        color: whiteColor,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                                const SizedBox(width: 19.0),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      itemListContact["nama"]
                                                          .toString(),
                                                      style: text12.copyWith(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                    Row(
                                                      children: [
                                                        itemListContact[
                                                            "logoJenisKel"],
                                                        Text(
                                                          itemListContact[
                                                              "jenisKel"],
                                                          style: text10.copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color:
                                                                  greyColor4),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          "${itemListContact["jabatan"]} | ",
                                                          style: text10.copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color:
                                                                  greyColor4),
                                                        ),
                                                        Text(
                                                          itemListContact[
                                                              "golDarah"],
                                                          style: text10.copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color:
                                                                  greyColor4),
                                                        ),
                                                      ],
                                                    ),
                                                    Text(
                                                      itemListContact["email"],
                                                      style: text10.copyWith(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: greyColor4),
                                                    ),
                                                    Text(
                                                      itemListContact[
                                                          "noTelepon"],
                                                      style: text10.copyWith(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: greyColor4),
                                                    ),
                                                  ],
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
                            )
                          ],
                        ),
                      ),
                    ),

                    // Content for  second tab ( right tab)
                    const Center(
                      child: Text("It's Other Contact"),
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
