import 'package:fantasy/presentation/manager/color_manager.dart';
import 'package:fantasy/presentation/pages/nav_bar_pages/balance/score_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: greyShade1,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: width,
                height: height * .3,
                child: Image.asset(
                  'assets/images/main.png',
                  fit: BoxFit.cover,
                ),
              ),
              buildHomeScreenListTile(
                title: 'Ochkolar',
                icon: Icon(Icons.calculate),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ScorePage(),
                    ),
                  );
                },
              ),
              buildHomeScreenListTile(
                title: 'Mening jamoam',
                icon: Icon(Icons.people),
                onTap: () {},
              ),
              buildHomeScreenListTile(
                title: 'Taqvim',
                icon: Icon(Icons.calendar_month),
                onTap: () {},
              ),
              buildHomeScreenListTile(
                title: 'Transfer',
                icon: Icon(Icons.transfer_within_a_station_sharp),
                onTap: () {},
              ),
              buildHomeScreenListTile(
                title: 'Ligalar',
                icon: Icon(Icons.sports_soccer),
                onTap: () {},
              ),
              buildHomeScreenListTile(
                title: 'Reyting',
                icon: Icon(Icons.star_border_purple500),
                onTap: () {},
              ),
            ],
          ),
        ));
  }

  GestureDetector buildHomeScreenListTile({
    required String title,
    required Icon icon,
    required Function() onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height * .07,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          leading: icon,
          title: Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: MediaQuery.of(context).size.height * .02,
            ),
          ),
          trailing: Icon(
            Icons.chevron_right,
            size: MediaQuery.of(context).size.height * .04,
            color: grey,
          ),
        ),
      ),
    );
  }
}
