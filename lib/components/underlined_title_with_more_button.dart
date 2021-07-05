import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class UnderLinedTitleWithButtonCon extends StatelessWidget {
  final String? title;
  final Function? moreOnPress;
  const UnderLinedTitleWithButtonCon({
    Key? key,
    this.title,
    this.moreOnPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          Container(
            height: 24,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: kDefaultPadding / 4),
                  child: Text(
                    title!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 7,
                    margin: EdgeInsets.only(right: kDefaultPadding / 4),
                    color: kPrimaryColor.withOpacity(.2),
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {
              moreOnPress!();
            },
            child: Text(
              'More',
            ),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              primary: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
