import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Center(
                child: Text('welcome', style: TextStyle(color: Colors.grey, fontSize: 24),).tr(),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){
                      context.setLocale(Locale('en', 'US'));
                    },
                    child: Text('English', style: TextStyle(color: Colors.white, fontSize: 14),),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){
                      context.setLocale(Locale('ko', 'KO'));
                    },
                    child: Text('Korean', style: TextStyle(color: Colors.black, fontSize: 14),),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){
                      context.setLocale(Locale('ja', 'JA'));
                    },
                    child: Text('Japanese', style: TextStyle(color: Colors.red, fontSize: 14),),
                  ),
                ),
                // SizedBox(width: 5,),
                // Expanded(
                //   child: ElevatedButton(
                //     onPressed: (){
                //       context.setLocale(Locale('fr', 'FR'));
                //     },
                //     child: Text('French', style: TextStyle(color: Colors.orange, fontSize: 14),),
                //   ),
                // ),
              ],
            ),
            SizedBox(height: 20,)
          ],
        ),
      )
    );
  }
}
