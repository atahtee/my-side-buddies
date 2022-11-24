import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mytravelbuddy/components/place.dart';
import 'package:mytravelbuddy/model/presentation/detail_destination_screen.dart';
import 'package:mytravelbuddy/route/app_routeName.dart';
import 'package:mytravelbuddy/theme/app_color.dart';
import 'package:mytravelbuddy/widgets/for_you_destination.dart';

class PopularDestinationWidget extends StatelessWidget {
  const PopularDestinationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 320,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        itemCount: popularDestionation.length,
        itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context, new MaterialPageRoute(builder: (context) => new ForYouDestinationWidget())

            );
          },
          child: Container(
            height: 320,
            width: MediaQuery.of(context).size.width * 0.6,
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                Container(
                  height: 220,
                  width: MediaQuery.of(context).size.width * 0.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(16)
                    ),
                    image: DecorationImage(image: AssetImage(popularDestionation[index].asset))
                  ),
                  padding: const EdgeInsets.all(16),
                  alignment: Alignment.topRight,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.favorite, color: Colors.red,
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  padding: EdgeInsets.all(6),
                  child: Row(
                    children: [
                      Expanded(child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            popularDestionation[index].name,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.place,
                                color: Colors.red,
                              ),
                              const SizedBox(width: 8,),
                              Text(popularDestionation[index].location)
                            ],
                          )
                        ],
                       )
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "\$${popularDestionation[index].price}",
                              style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: AppColor.primaryColor)
                            ),
                            const TextSpan(text: "\n"),
                            TextSpan(
                              text: "/Person",
                              style: Theme.of(context).textTheme.bodyMedium
                            )
                          ]
                        )
                        )
                    ],
                  ),
                )
              ],
            ),
          ));
      }),
    );
  }
}
