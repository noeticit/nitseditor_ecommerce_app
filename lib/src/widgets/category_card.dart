import 'package:flutter/material.dart';
import 'package:nitseditor_ecommerce/src/model/category.dart';
import 'package:nitseditor_ecommerce/src/themes/light_color.dart';
import 'package:nitseditor_ecommerce/src/widgets/title_text.dart';
import 'package:nitseditor_ecommerce/src/widgets/extentions.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  final ValueChanged<Category> onSelected;
  CategoryCard({Key key, this.category, this.onSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: LightColor.background,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: <BoxShadow>[
          BoxShadow(color: Color(0xfff8f8f8), blurRadius: 15, spreadRadius: 10),
        ],
      ),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: LightColor.orange.withAlpha(40),
                    ),
                    category.image != null ?  Image.asset(category.image) : SizedBox(),
                  ],
                ),
                // SizedBox(height: 5),
                TitleText(
                  text: category.name != null ? category.name : '',
                  fontSize: 14,
                ),
              ],
            ),
          ],
        ),
      ).ripple(() {
        //        Navigator.of(context).pushNamed('/detail');
        onSelected(category);
      }, borderRadius: BorderRadius.all(Radius.circular(20))),
    );
  }
}
