import 'package:flutter/material.dart';

class MyAppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 15,
      child: Container(
        alignment: Alignment.center,
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(accountName: null, accountEmail: null),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Image.asset('/assets/images/IHKodifier.png',
                // height: 150,
                // fit: BoxFit.contain,),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Corona Virus Case-count ',
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(color: Colors.black, fontSize: 24),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    'A Free and OpenSource  App by ',
                    style: Theme.of(context).textTheme.subtitle.copyWith(
                        fontSize: 14, color: Theme.of(context).primaryColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Text(
                    ' Ihtiram  Ul Haque Khattak',
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(fontSize: 18, color: Colors.black87),
                  ),
                ),
                Text(
                  'Follow me on GitHub',
                  style: Theme.of(context).textTheme.subhead,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'https://github.com/IHKodifier',
                    style: Theme.of(context)
                        .textTheme
                        .subhead
                        .copyWith(fontSize: 12, color: Colors.blue),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 58),
                  child: Text(
                    'https://github.com/IHKodifier/CoronaTracker',
                    style: Theme.of(context).textTheme.caption.copyWith(fontSize: 12, color: Colors.blue),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 58),
                  child: Text(
                    'Data source: ',
                    style: Theme.of(context).textTheme.caption,
                  ),
                ),
                Text(
                  'https://www.worldometers.info/',
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
