import 'package:flutter/material.dart';

import 'home.dart';

class OnBoarding extends StatefulWidget {

  const OnBoarding({super.key});
  
  @override
  State<OnBoarding> createState() => _OnBoardingState();

}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/lamborghini.png"),
            fit: BoxFit.cover,
            )
        ), 
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              const Text(
                "Elevate Your Drive \nDynamX - Where \nPower Mets Precision",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 39,
                  fontWeight: FontWeight.bold
                ),
              ),
              const Text(
                  "Test app demo",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const Home() ));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 350,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: const Text(
                        "GET STARTED",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                          ),
                        ),
                    ),
                  )
                  
                ),
              )

            ]
          )
        )
      ),
    );
  }
}