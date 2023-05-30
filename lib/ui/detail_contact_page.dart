import 'package:flutter/material.dart';
import 'package:technical_loanmarket/utils/theme.dart';

class DetailContactPage extends StatelessWidget {
  const DetailContactPage(
      {super.key,
      required this.nama,
      required this.email,
      required this.phoneNumber,
      required this.jenisKel});

  final String nama;
  final String email;
  final String phoneNumber;
  final String jenisKel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text("Detail Contact",
            style: text25.copyWith(fontWeight: FontWeight.w700)),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 21, right: 20, top: 18.0, bottom: 18.0),
            child: Column(
              children: [
                Text(nama, style: text20),
                const SizedBox(height: 5.0),
                Text(
                  "Date Created : December 21, 2022",
                  style: text12.copyWith(fontWeight: FontWeight.w400),
                ),

                const SizedBox(height: 18.0),

                // Contact Info
                Container(
                  height: 35,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: greyColor1, border: Border.all(color: greyColor3)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12, right: 11, top: 9, bottom: 9),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Contact",
                          style: text14.copyWith(fontWeight: FontWeight.w700),
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/icon_edit.png",
                              width: 20,
                              height: 20,
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Text(
                              "Edit",
                              style: text14.copyWith(
                                  color: thridColor,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 56,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: whiteColor),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: greyColor3),
                              color: whiteColor),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Phone",
                                  style: text12.copyWith(
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  "Email",
                                  style: text12.copyWith(
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: greyColor3),
                              color: whiteColor),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  phoneNumber,
                                  style: text12.copyWith(
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  email,
                                  style: text12.copyWith(
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 14),

                // Personal Info
                Container(
                  height: 35,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: greyColor1, border: Border.all(color: greyColor3)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12, right: 11, top: 9, bottom: 9),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Personal Information",
                          style: text14.copyWith(fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 125,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: whiteColor),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: greyColor3),
                              color: whiteColor),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Type Contact",
                                  style: text12.copyWith(
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  "KTP",
                                  style: text12.copyWith(
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  "Birthday",
                                  style: text12.copyWith(
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  "Gender",
                                  style: text12.copyWith(
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  "Adviser",
                                  style: text12.copyWith(
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: greyColor3),
                              color: whiteColor),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Perorangan",
                                  style: text12.copyWith(
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  "31756736378887",
                                  style: text12.copyWith(
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  "07/12/2004",
                                  style: text12.copyWith(
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  jenisKel,
                                  style: text12.copyWith(
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  "Yohannes Affandy (Jojo)",
                                  style: text12.copyWith(
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 29),

                // Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: greyColor3),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(5)))),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/icon_share.png",
                              width: 20,
                              height: 20,
                            ),
                            const SizedBox(width: 7),
                            Text(
                              "Share Access",
                              style: text13,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 29),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: redColor,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: greyColor3),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/icon_delete.png",
                              width: 20,
                              height: 20,
                            ),
                            const SizedBox(width: 7),
                            Text(
                              "Delete Contact",
                              style: text13,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 21),

                // Application
                Container(
                  height: 35,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: thridColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 11, right: 5, top: 9, bottom: 9),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Application",
                          style: text14.copyWith(
                              fontWeight: FontWeight.w700, color: whiteColor),
                        ),
                        Row(
                          children: [
                            Image.asset("assets/images/icon_add_white.png"),
                            const SizedBox(width: 7),
                            Text(
                              "Tambah",
                              style: text14.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: whiteColor),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 85,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    ),
                    border: Border.all(color: greyColor3),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 13.14, top: 12, bottom: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: thridColor,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/icon_coins.png",
                                height: 21,
                                width: 21,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "Kredit Pemilikan Rumah Secondary (KPR)",
                                style: text6.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: whiteColor),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 11.86,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nasabah",
                              style:
                                  text12.copyWith(fontWeight: FontWeight.w700),
                            ),
                            Text("Loan Amount",
                                style: text12.copyWith(
                                    fontWeight: FontWeight.w700)),
                            Text("Loan Step",
                                style: text12.copyWith(
                                    fontWeight: FontWeight.w700)),
                            Text("Tenor",
                                style: text12.copyWith(
                                    fontWeight: FontWeight.w700)),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4, right: 11),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(":",
                                  style: text12.copyWith(
                                      fontWeight: FontWeight.w400)),
                              Text(":",
                                  style: text12.copyWith(
                                      fontWeight: FontWeight.w400)),
                              Text(":",
                                  style: text12.copyWith(
                                      fontWeight: FontWeight.w400)),
                              Text(":",
                                  style: text12.copyWith(
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Van Tomiko Can",
                                style: text12.copyWith(
                                    fontWeight: FontWeight.w400)),
                            Text("Rp 10.000.000.000",
                                style: text12.copyWith(
                                    fontWeight: FontWeight.w400)),
                            Text("Akad Kredit",
                                style: text12.copyWith(
                                    fontWeight: FontWeight.w400)),
                            Text("10 Tahun",
                                style: text12.copyWith(
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 21),

                // Note
                Container(
                  height: 35,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: greyColor1, border: Border.all(color: greyColor3)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12, right: 5, top: 9, bottom: 9),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Contact",
                          style: text14.copyWith(fontWeight: FontWeight.w700),
                        ),
                        Row(
                          children: [
                            Image.asset("assets/images/icon_add_black.png"),
                            const SizedBox(width: 7),
                            Text(
                              "Tambah",
                              style:
                                  text14.copyWith(fontWeight: FontWeight.w700),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 155,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    border: Border.all(color: greyColor3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 13.0, vertical: 9.0),
                    child: Row(
                      children: [
                        Container(
                          height: 130,
                          width: 120,
                          decoration: BoxDecoration(
                              color: thridColor,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8))),
                          child: Card(
                            color: greyColor1,
                            margin: EdgeInsets.zero,
                            elevation: 4.0,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Text("Note",
                                        style:
                                            text12.copyWith(color: greyColor6)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 9.0),
                                    child: Text("February 9, 2023",
                                        style:
                                            text8.copyWith(color: greyColor5)),
                                  ),
                                  Text(
                                    "Note",
                                    style: text8.copyWith(
                                        fontWeight: FontWeight.w400,
                                        color: greyColor5),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
