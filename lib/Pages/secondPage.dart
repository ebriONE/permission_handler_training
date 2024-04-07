import 'package:file_type_check/Theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}


class _SecondPageState extends State<SecondPage> {

  bool light0 = true;
  bool light1 = true;

  final MaterialStateProperty<Icon?> thumbIcon =
  MaterialStateProperty.resolveWith<Icon?>(
        (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.shield_moon_rounded);
      }
      return const Icon(Icons.sunny);
    },
  );


  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(5))
                    ),
                    child:  Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text("Dark mode ",
                            style: TextStyle(fontSize: 13,color: Colors.deepPurple,fontWeight: FontWeight.bold),),
                        ),
                        const Spacer(flex: 1,),
                        // Switch(
                        //   thumbIcon: thumbIcon,
                        //   value: light1,
                        //   onChanged:
                        //         (bool value) {
                        //     setState(() {
                        //       light1 = value;
                        //     });
                        //   },
                        // ),
                        FloatingActionButton(onPressed: (){
                          Provider.of<ThemeProvider>(context, listen: false).toggleTheme();

                        })
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
      );
  }
}
