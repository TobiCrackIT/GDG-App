import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: true,
      resizeToAvoidBottomPadding: true,
      appBar: new AppBar(elevation: 2.0,centerTitle:true, title:new Text("Info",style: new TextStyle(color: Colors.black,fontSize: 14.0),),backgroundColor: Colors.white,),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 10.0,bottom: 30.0),
        child: new Container(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Center(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: new Text("DevFest Upendi",textAlign: TextAlign.center,style: new TextStyle(fontWeight: FontWeight.w500,fontSize: 18.0),),
                ),
              ),
              new Text("WIFI",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),textAlign: TextAlign.start,),
              new SizedBox(width: double.infinity,height: 10.0,),
              new Text("Network Name: GDGU",style: TextStyle(color: Colors.black,),textAlign: TextAlign.start,),
              new Text("Password: google",style: TextStyle(color: Colors.black,),textAlign: TextAlign.start,),

              new SizedBox(width: double.infinity,height: 30.0,),
              new Text("SOCIAL MEDIA",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),textAlign: TextAlign.start,),
              new SizedBox(width: double.infinity,height: 10.0,),
              new Text("@GDGUpendi  #DevFestU  #DevFestUpendi",style: TextStyle(color: Colors.blue,),textAlign: TextAlign.start,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:12.0,horizontal: 20.0),
                child: new RaisedButton(
                    color: Colors.lightBlue,
                    child: new Text("POST A TWEET",style: TextStyle(color: Colors.white,)),
                    onPressed: (){}),
              ),

              new SizedBox(width: double.infinity,height: 30.0,),
              new Text("A LITTLE ABOUT DevFest...",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),textAlign: TextAlign.start,),
              new SizedBox(width: double.infinity,height: 15.0,),
              new Padding(
                padding: new EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                child: new Text("DevFest Upendi is a community-led, tech-event hosted by Google Developers Group in the city of Upendi focused on"
                    "community building and learning about the many awesome Google technologies. It is inspired by and uniquely tailored to the"
                    "needs of the Developer Community\n\nJoin us for the annual Developer Festival of Sessions, Workshops, Training, Codelabs and"
                    "much more by awesome speakers and with nearly over 5,000 other developers from across the World.\n\nThe community "
                    "is excited to host you at this year\'s event because a lot has been put into making it a success. Gear up for an "
                    "experience that only occur once in a lifetime.",style: TextStyle(color: Colors.black,fontSize: 14.7),textAlign: TextAlign.start,),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
