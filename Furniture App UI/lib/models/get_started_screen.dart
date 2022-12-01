import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:furniture/components/route/app_route_name.dart';
import 'package:furniture/components/theme/app_color.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/get_started.jpeg"),
                fit: BoxFit.cover)),
        child: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Text(
                "We provide High Quality Products Just for You",
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(color: AppColor.white),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRouteName.home);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(48)
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 24
                )
              ),
              child: Text(
                "GET STARTED",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: AppColor.black),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: Theme.of(context).textTheme.button?.copyWith(color: AppColor.white),
                ),
                const SizedBox(width: 4,),
                TextButton(
                onPressed: (){}, 
                child: Text(
                  'Login Here',
                  style: Theme.of(context).textTheme.button?.copyWith(color: AppColor.white),
                ))
              ],
            )
          ],
        )),
      ),
    );
  }
}
