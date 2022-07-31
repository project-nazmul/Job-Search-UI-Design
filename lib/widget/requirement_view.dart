import 'package:flutter/material.dart';
import 'package:uidesign_day_24/design/custom_text.dart';

class RequirementView extends StatelessWidget {
  const RequirementView({Key? key,required this.dataList}) : super(key: key);
  final dynamic dataList;
  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topRight: Radius.circular(45),topLeft: Radius.circular(45)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20,left: 20,right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 4,
                width: 100,
                color: Colors.black.withOpacity(0.3),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xffD7F2F2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffD7F2F2),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(dataList['logo'])
                        )
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                CustomText(text: dataList['name'], clr: Colors.black, fw: FontWeight.normal, fs: 16),
                const SizedBox(width: 60,),
                const Icon(Icons.bookmark_border),
                const Icon(Icons.more_horiz),
              ],
            ),
            SizedBox(height: 10,),
            CustomText( text: dataList['title'], clr: Colors.black.withOpacity(0.7), fw: FontWeight.bold, fs: 20),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment:  MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.location_on_outlined,color: Colors.amber,),
                    Text(dataList['location'])
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.timer,color: Colors.amber,),
                    Text('Full Time')
                  ],
                ),
              ],
            ),
            SizedBox(height: 20,),
            CustomText(text: 'Requirement', clr: Colors.black.withOpacity(0.7), fw: FontWeight.bold, fs: 15),
            SizedBox(height: 5,),
            Expanded(
              child: ListView.builder(
                itemCount: dataList['req'].length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        maxRadius: 2,
                      ),
                      Text(dataList['req'][index],style: TextStyle(height: 2),)
                    ],
                  );
                },
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(double.infinity, 30)),
                shape:MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            )
    ),
                backgroundColor: MaterialStateProperty.all(Color(0xff01B2B8)),
              ),
                onPressed: (){},
                child: Text('Apply Now')
            ),

          ],
        ),
      ),
    );
  }
}
