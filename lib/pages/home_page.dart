import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Expanded(
              child: Center(
                child: const Text("storm",style: TextStyle(color: Colors.teal,fontSize: 22),).tr(),
              ),
            ),

            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    color: Colors.green,
                    width: double.infinity,
                    child: TextButton(
                      child: const Text("English",style: TextStyle(color: Colors.white),),
                      onPressed: (){
                        context.setLocale(const Locale('en','US'));
                      },
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 45,
                    color: Colors.red,
                    width: double.infinity,
                    child: TextButton(
                      child: const Text("Korean",style: TextStyle(color: Colors.white),),
                      onPressed: (){
                        context.setLocale(const Locale('kr','KR'));
                      },
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 45,
                    color: Colors.purple,
                    width: double.infinity,
                    child: TextButton(
                      child: const Text("Japanese",style: TextStyle(color: Colors.white),),
                      onPressed: (){
                        context.setLocale(const Locale('ja','JA'));
                      },
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
