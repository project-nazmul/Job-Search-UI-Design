import 'package:flutter/material.dart';
import 'package:uidesign_day_24/design/custom_text.dart';

class SearchBarDesign extends StatelessWidget {
  const SearchBarDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(right: 20,top: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/search_bg.png')
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomText(text: 'Fast Search', clr: Colors.white70, fw: FontWeight.bold, fs: 22),
          const CustomText(text: 'You can search quickly for\nthe job you want', clr: Colors.white60, fw: FontWeight.normal, fs: 18),
          const SizedBox(height: 20,),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: const Icon(Icons.search),
              fillColor: Colors.white,
              filled: true,

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
