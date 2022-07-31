import 'package:flutter/material.dart';
import 'package:uidesign_day_24/design_over_background.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      color: const Color(0xffF3F3F3),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.black12,
                    ))
              ],
            ),
            Column(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(left: 20, top: 40),
                    child: DesignOverBackground(),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber, //Floating action button on Scaffold
        onPressed: () {
          //code to execute on button press
        },
        child: const Icon(Icons.add), //icon inside button
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        //bottom navigation bar on scaffold
        color: Colors.white,
        shape: const CircularNotchedRectangle(), //shape of notch
        notchMargin: 10,
        //notche margin between floating button and bottom appbar
        child: Row(
          //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.black.withOpacity(0.4),
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.work,
                color: Colors.black.withOpacity(0.4),
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.menu_book,
                color: Colors.black.withOpacity(0.4),
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.black.withOpacity(0.4),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
