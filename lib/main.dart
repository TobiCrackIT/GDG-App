import 'package:flutter/material.dart';
import 'info.dart';
import 'schedule.dart';
import 'location.dart';


void main() =>
    runApp(new MaterialApp(
      //title: 'Bottom Nav.',
      //debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: new Page(),
      )
    );

class Page extends StatefulWidget{
  @override
  _PageState createState() => new _PageState();

}

class _PageState extends State<Page> with SingleTickerProviderStateMixin{
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController=new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new TabBarView(
          children: <Widget>[
            //new NewPage("Space 1"),
            new Info(),
            new Schedule(),
            new Location(),
          ],

          controller: tabController,
      ),
      bottomNavigationBar: new Material(
        color: Colors.green,
        child: new TabBar(
          controller: tabController,
            indicatorColor: Colors.transparent,
            tabs:<Widget>[
              new Tab(
                icon: new Icon(Icons.info),
                child: new Text("Info"),
              ),
              new Tab(
                icon: new Icon(Icons.calendar_today),
                child: new Text("Schedule"),
              ),
              new Tab(
                icon: new Icon(Icons.location_on),
                child: new Text("Location"),
              ),

            ]
        ),
      ),
    );
    /*Container(
      child: new Center(
        child: new RaisedButton(
          child: new Text("Sign Up",style: TextStyle(fontSize: 18.0,color: Colors.blueGrey),),
          color: Colors.green,
          onPressed: ()=>Scaffold.of(context).showSnackBar(
              new SnackBar(
                content: new Text("Success!"),
                duration: new Duration(seconds: 4),

              )),
        ),
      ),
    );*/
  }

}

//class RButton extends StatelessWidget {}

class NewPage extends StatelessWidget {
  String title;
  NewPage(this.title);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //appBar: new AppBar(title: new Text(title),),
      body: new Center(
        child: new Text(title,style: new TextStyle(fontSize: 30.0,),),
      )
    );
  }
}

