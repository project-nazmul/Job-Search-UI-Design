import 'package:flutter/material.dart';
import 'package:uidesign_day_24/design/custom_text.dart';

class PageBarDesign extends StatelessWidget {
  const PageBarDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex:5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomText(text: 'Welcome Home', clr: Color(0xffAAAAAC), fw: FontWeight.bold, fs: 13),
              const SizedBox(height: 10,),
              CustomText(text: 'Nazmul Khan', clr: Colors.black.withOpacity(0.7), fw: FontWeight.bold, fs: 22),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Transform(
                          transform: Matrix4.rotationZ(100),
                          child: const Icon(Icons.notifications_none)
                      ),
                    ),
                    Positioned(
                      right: 20,
                      child: Container(
                        height: 6,
                        width: 6,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,

                        ),
                      ),
                    )

                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('assets/images/avatar.png')
                      ),
                      border: Border.all(color: Colors.white,width: 3),
                      color: Colors.red,
                      shape: BoxShape.circle
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 20,)
      ],
    );
  }
}
