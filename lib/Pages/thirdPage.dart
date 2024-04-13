import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../tools/randomUserDataService.dart';


  class apiPage extends StatefulWidget {
  @override
  _apiPage createState() => _apiPage();

  }

  class _apiPage extends State<apiPage>{




    @override
    loadUser() async {
      final result = await UserService().getUser();
      result.forEach((element) {print(element.email);

      });
    }
    Widget build(BuildContext context){
      return  Scaffold(
        body: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Container(
              color: Colors.blueGrey,
              child: Text(""),
              //TODO add data from returned JSON 
            ),
          ),
        ),

      );
    }


  }