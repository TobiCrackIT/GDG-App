import 'package:flutter/material.dart';

class Schedule extends StatefulWidget {
  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {

  int _step=0;

  List<Step> steps=[
    new Step(title: new Text("9:00 - 10:00 am"),subtitle:Text('Arrival of participants.') ,content: new Text("Arrival of participants to the venue of the program."),isActive: true),
    new Step(title: new Text("10:00 - 10:30 am"), content: new Text("Pre-Festival Talks."),isActive: true),
    new Step(title: new Text("10:30 - 11:30 am"), content: new Text("First Panel Discussion\nTopic: Google Cloud Platform Over The Years."),isActive: true),
    new Step(title: new Text("11:30 - 11:45 am"), content: new Text("Google Talk."),isActive: true),
    new Step(title: new Text("11:45 - 12:15 pm"), content: new Text("Tea Break."),isActive: true),
    new Step(title: new Text("12:15 - 01:00 pm"), content: new Text("Second Panel Session"),isActive: true),
    new Step(title: new Text("01:00 - 02:00 pm"), content: new Text("Contributions/Questions/Others."),isActive: true),
    new Step(title: new Text("02:00 - 02:30 pm"), content: new Text("Third Panel Session"),isActive: true),
    new Step(title: new Text("02:30 - 03:00 pm"), content: new Text("Closing."),isActive: false),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(elevation: 0.0,centerTitle:true, title:new Text("Schedule",style: new TextStyle(color: Colors.black,fontSize: 14.0),),backgroundColor: Colors.transparent,),
      body: new Container(
        child: new Stepper(
          steps: steps,
          currentStep: _step,
          onStepTapped: (step){
            setState(() {
              _step=step;
            });
          },

          controlsBuilder: (BuildContext context,
              {VoidCallback onStepContinue, VoidCallback onStepCancel })=>Container(),
          
          type: StepperType.vertical,),
      ),
    );
  }
}

