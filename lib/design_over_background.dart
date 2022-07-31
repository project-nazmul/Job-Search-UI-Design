import 'package:flutter/material.dart';
import 'package:uidesign_day_24/widget/detail_view.dart';
import 'package:uidesign_day_24/widget/list_view_bar.dart';
import 'package:uidesign_day_24/widget/page_bar_design.dart';
import 'package:uidesign_day_24/widget/search_bar_design.dart';

class DesignOverBackground extends StatelessWidget {
  const DesignOverBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          flex: 3,
          child: PageBarDesign(),
        ),
        const Expanded(
          flex:10,
          child: SearchBarDesign()
        ),
        const Expanded(
          flex:2,
          child: ListViewBar()
        ),
        Expanded(
          flex:7,
          child: DetailView()
        ),
        Expanded(flex:1, child: Container(),),
      ],
    );
  }
}
