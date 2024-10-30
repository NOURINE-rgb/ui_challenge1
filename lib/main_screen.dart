import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge1/element_gridview.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: Image.asset(
          'assets/images/menu.png',
          color: Colors.white,
          width: 30,
        ),
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Berlin, Germany",
            style: GoogleFonts.quicksand(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
          )
        ]),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              size: 32,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/covid-bg.png',
              ),
              fit: BoxFit.cover,
              opacity: 0.9),
        ),
        child: Column(
          children: [
            Container(
              height: 170,
              padding: const EdgeInsets.only(right: 30, top: 30),
              child: Align(
                alignment: Alignment.centerRight,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "6738",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 58,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Total Cases",
                      style: GoogleFonts.quicksand(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height - 150,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(52),
                    topRight: Radius.circular(52),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.symmetric(horizontal: 27),
                      // width: 420,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400,
                            offset: Offset.zero,
                            blurRadius: 15,
                          ),
                        ],
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/doctor.png",
                            width: 120,
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Column(
                            children: [
                              Text(
                                'Symptom \nChecker',
                                style: GoogleFonts.quicksand(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                                // textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Based on common \nsymptoms',
                                style: GoogleFonts.quicksand(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Expanded(
                      child: GridView(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 1,
                          mainAxisSpacing: 40,
                        ),
                        children: const [
                          ElementGridview(
                              title: "Map", pathImage: "assets/images/map.svg"),
                          ElementGridview(
                              title: "Risk of\ninfection",
                              pathImage: "assets/images/virus.svg"),
                          ElementGridview(
                              title: "Upload\nData",
                              pathImage: "assets/images/upload.svg"),
                          ElementGridview(
                              title: "Statistics",
                              pathImage: "assets/images/trend.svg"),
                          ElementGridview(
                              title: "Protection",
                              pathImage: "assets/images/facemask.svg"),
                          ElementGridview(
                              title: "Contacts",
                              pathImage: "assets/images/phone.svg"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
