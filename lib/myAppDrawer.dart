import 'package:flutter/material.dart';


class MyAppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 450,
      child: Padding(padding: EdgeInsets.all(8),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            Wrap(children: <Widget>[Text('Free Coronoa Virus Tracking App ',style: Theme.of(context).textTheme.title.copyWith(color: Colors.black,fontSize: 18),)]),
            SizedBox(height: 20,),
            Text('by IHKodifier',style: Theme.of(context).textTheme.subtitle,),
            SizedBox(height: 20,),
            Text('Follow me on GitHub',style: Theme.of(context).textTheme.subhead,)
          ],
        ),
      ),),
              );
  }
}