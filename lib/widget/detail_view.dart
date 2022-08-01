import 'package:flutter/material.dart';
import 'package:uidesign_day_24/design/custom_text.dart';
import 'package:uidesign_day_24/widget/requirement_view.dart';

class DetailView extends StatelessWidget {
  DetailView({Key? key}) : super(key: key);
  final List dataItem = [
    {'req':['fhuh jfkejffhuh jfkejf jdfjc hj jdfjc hj','tswgufhuh jfkejf jdfjc hj uwi suwi','fdfgds hyyt rer','gjj yufhuh jfkejf jdfjc hjyg ty uiy'],'name':'Airbnb Inc,','title':'VP Business Intelligence','location':'Harfde Sfhk\nCanada','logo':'assets/images/airbnb_logo.png'},
    {'req':['dfhg khjjgy jdfjc hj','khghfg uwi suwi','tffd hyyt rer','fi yufhuh jfkejf jdfjc hjyg ty uiy'],'name':'Google Inc,','title':'Principle Vp Ocean','location':'Gefor Tffhk\nUnited State','logo':'assets/images/google_logo.png'},
    {'req':['ghhy jfhuh jfkejf jdfjc hjfkejf jdfjc hj','qwrr uwi suwi','loifhuh jfkejf jdfjc hjiu hyyt rer','gjj yuyg ty uiy'],'name':'Linkedin Inc,','title':'VP Business Intelligence','location':'Harfde Sfhk\nCanada','logo':'assets/images/linkedin_logo.png'},
    {'req':['thy jfkejf jdfjc hj','drygy uwi suwi','poi hyyt rer','gjj yfhuh jfkejf jdfjc hjuyg ty uiy'],'name':'Google Inc,','title':'Principle Vp Ocean','location':'Gefor Tffhk\nUnited State','logo':'assets/images/google_logo.png'},
    {'req':['cgh jffhuh jfkejf jdfjc hjkejf jdfjc hj','were uwi suwi','poi hyyt rer','vg5 yuyg ty uiy'],'name':'Airbnb Inc,','title':'VP Business Intelligence','location':'Harfde Sfhk\nCanada','logo':'assets/images/airbnb_logo.png'},
    {'req':['piuy jffhuh jfkejf jdfjc hjkejf jdfjc hj','asfddf uwi suwi','drg hfhuh jfkejf jdfjc hjyyt rer','gjj yuyg ty uiy'],'name':'Linkedin Inc,','title':'Principle Vp Ocean','location':'Gefor Tffhk\nUnited State','logo':'assets/images/linkedin_logo.png'},
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: dataItem.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: (){
            showModalBottomSheet(

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(45),topRight: Radius.circular(45),)
                ),
                context: context,
                builder: (context){
                  return RequirementView(dataList: dataItem[index],);
                }
            );
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30)
            ),
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.only(top: 15,bottom: 15,right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
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
                                image: AssetImage(dataItem[index]['logo'],)
                            )
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    CustomText(text: dataItem[index]['name'], clr: Colors.black, fw: FontWeight.normal, fs: 16),
                    const SizedBox(width: 60,),
                    const Icon(Icons.bookmark_border)
                  ],
                ),
                CustomText(text: dataItem[index]['title'], clr: Colors.black, fw: FontWeight.bold, fs: 13),
                Row(
                  children: [
                    const Icon(Icons.location_on_outlined,color: Colors.amber,),
                    Text(dataItem[index]['location'])
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
