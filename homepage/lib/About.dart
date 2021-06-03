import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _IntroScreen();
  }

}

class _IntroScreen extends State<IntroScreen>{

  @override
  Widget build(BuildContext context) {

    //this is a page decoration for intro screen
    PageDecoration pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0,
        fontWeight: FontWeight.w700,
        color:Colors.black,
      ), //tile font size, weight and color
      bodyTextStyle:TextStyle(fontSize: 19.0, color:Colors.black),
      //body text size and color
      descriptionPadding: EdgeInsets.fromLTRB(15.0, 0.0, 16.0, 16.0),
      //description padding
      imagePadding: EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 0.0), //image padding//
    );

    return IntroductionScreen(
      globalBackgroundColor: Colors.tealAccent,
      //main background of screen
      pages: [ //set your page view here
        PageViewModel(
          title:"What is this App For?",
          body: "CONTACT-LESS functioning is what is mostly needed Covid times.                 Qkres brings to u, such a system. Now u don't need to carry your ID card nor need to worry about having contact with Id card.                                                                      Now you just need to install this app on your device, get your unique QR code scanned to get contactless entry to hospital, mess, etc..",
          image: Image.asset('assets/Images/qr.png', width: 250.0),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Mess",
          body: "You are supposed to book your own slots and table and seat number in the app.  You can also choose extras from the extras section. The booking can be done for the day and the following day. "
              "      Don't forget to press CONFIRM button on bottom to confirm your booking.  "
              "      Finally, on entering the mess, open your QR code on right top corner to gain access to mess.",
          image: Image.asset('assets/Images/mess_1.jpg', width: 250.0),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "IITM Hospital",
          body: "Doctor's Date and Time slots will be available on main screen. Can book your appointments with respective doctor."
              "       It is up to that doctor who will either accept or decline your appointment."
              " Once accepted, scan your QR code for verification purposes during appointment.",
          image: Image.asset('assets/Images/hosp.png', width: 250.0),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "E-ID Card / Complain",
          body: "E-ID card is your online ID card, with info like name, roll no., Mess name;  table, seat number lastly confirmed."
              "                 Add your profile pic for verification purposes. "
              "                                                                 In case if u find any unhygienic conditions, not impressed with food quality, or any other form of complain, feel free to take picture and add message, which will be directly delivered to CMFGS team, who will take further action ",
          image: Image.asset('assets/Images/comp_1.png', width: 250.0),
          decoration: pageDecoration,
        ),

        //add more screen here
      ],


      onDone: () => Navigator.pop(context), //go to home page on done
      onSkip: () => Navigator.pop(context), // You can override on skip
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: Text('Skip', style: TextStyle(color: Colors.black),),
      next: Icon(Icons.arrow_forward, color: Colors.black,),
      done: Text('Done', style: TextStyle(
          fontWeight: FontWeight.w600, color:Colors.black
      ),),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0), //size of dots
        color: Colors.black, //color of dots
        activeSize: Size(22.0, 10.0),
        //activeColor: Colors.black, //color of active dot
        activeShape: RoundedRectangleBorder( //shave of active dot
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }

  void goHomepage(context){
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context){
          return Scaffold(
            appBar: AppBar(
              title:Text("Home Page"),
            ),
          );
        }
        ), (Route<dynamic> route) => false);
    //Navigate to home page and remove the intro screen history
    //so that "Back" button wont work.
  }

  Widget introImage(String assetName) {
    //widget to show intro image
    return Align(
      child: Image.asset('$assetName', width: 300.0),
      alignment: Alignment.center,
    );
  }
}