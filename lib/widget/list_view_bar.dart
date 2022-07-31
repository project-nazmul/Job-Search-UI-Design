import 'package:flutter/material.dart';

class ListViewBar extends StatefulWidget {
  const ListViewBar({Key? key}) : super(key: key);

  @override
  State<ListViewBar> createState() => _ListViewBarState();
}

class _ListViewBarState extends State<ListViewBar> {
  final itemList=['All','⚡️  Popular','⭐  Featured'];
  var selected=0;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              setState((){
                selected=index;
              });

            },
            child: Container(
              padding: const EdgeInsets.only(right: 20,left: 15),
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 10,top: 10,),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: selected==index?const Color(0xff55B9BE):Colors.white,
                  border: Border.all(color: const Color(0xff55B9BE),width: 1)
              ),
              child: Text(itemList[index]),
            ),
          );
        },
        separatorBuilder: (context,index){
          return const SizedBox(width: 5,);
        },
        itemCount: itemList.length
    );
  }
}
