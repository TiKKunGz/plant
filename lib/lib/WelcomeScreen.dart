import 'package:flutter/material.dart';
import 'package:my_plant/profile_menu.dart';

import 'constants.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Spacer(flex: 2),
            Image.asset("assets/image/wall.png"),
            Spacer(flex: 3),
            Text(
              "Welcome to MyApp \nSave tree planting information.",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Spacer(
              flex: 1,
            ),
            Text(
              "แอพพลิเคชั่นบันทึกข้อมูลการปลูกต้นไม้ \nจังหวัดมหาสารคาม",
              textAlign: TextAlign.center,
              style: TextStyle(
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color!
                          .withOpacity(0.64))
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Spacer(
              flex: 2,
            ),
            FittedBox(
                child: TextButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileScreen(),
                        )),
                    child: Row(
                      children: [
                        Text(
                          "Skip",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color!
                                      .withOpacity(0.8)),
                        ),
                        SizedBox(width: kDefaultPadding / 4),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .color!
                              .withOpacity(0.8),
                        )
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}
