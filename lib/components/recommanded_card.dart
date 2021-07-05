import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class RecommandedCard extends StatelessWidget {
  final String? image;
  final String? title;
  final String? country;
  final String? amount;
  final Function? cardOnTap;

  RecommandedCard(
      {this.title, this.amount, this.country, this.image, this.cardOnTap});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        cardOnTap!();
      },
      child: Container(
        width: size.width * .4,
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5,
        ),
        child: Column(
          children: [
            Image.asset(image!),
            Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(.23),
                  ),
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$title\n'.toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: '$country'.toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '\$$amount',
                    style: Theme.of(context).textTheme.button!.copyWith(
                          color: kPrimaryColor,
                        ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
