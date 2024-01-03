import 'package:flutter/material.dart';
import 'Components/statusButtom.dart';
import 'Components/HomeStatusCar.dart';
import 'Components/HomeWidget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 350,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/lamborghini.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    StatusButtom(
                      firstLine: "Milage",
                      secondLine: "2.545 KM",
                    ),
                    StatusButtom(
                      firstLine: "Range",
                      secondLine: "278 KM",
                    ),
                    StatusButtom(
                      firstLine: "Battery",
                      secondLine: "45 %",
                    ),
                    StatusButtom(
                      firstLine: "Temperature",
                      secondLine: "25 ºC",
                    )
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    HomeStatusCar(
                        iconData: Icons.lock,
                        statusText: "Locked"
                    ),
                    HomeStatusCar(
                        iconData: Icons.ac_unit,
                        statusText: "Fan"
                    ),
                    HomeStatusCar(
                        iconData: Icons.video_camera_front,
                        statusText: "Security"
                    ),
                    HomeStatusCar(
                        iconData: Icons.all_inclusive,
                        statusText: "Valet"
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              HomeWidget(
                image: "assets/neon.png",
                firstLine: "Location",
                secondLine: "1234 Elm Street",
                footerLine: "Anytown USA 5678",
              ),
              HomeWidget(
                image: "assets/neon.png",
                firstLine: "CLOSEST CHARGE STATION",
                secondLine: "4567 Mable Avenue",
                footerLine: "Springfield USA 5678",
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Stack(
        alignment: Alignment.topCenter,
        children: [
          BottomNavigationBar(
            backgroundColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.location_on), label: "Locate"),
              BottomNavigationBarItem(icon: Icon(Icons.notifications_on), label: "Notifications"),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            ],
          ),
          /*FloatingActionButton(
              onPressed: (){},
            child: const Icon(
              Icons.flash_on,
              color: Colors.white,
            ),
            backgroundColor: Colors.purpleAccent,
          )*/
        ],
      ),
    );
  }
}
