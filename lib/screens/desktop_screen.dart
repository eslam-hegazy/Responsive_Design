import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constants/app_color.dart';

class DeskTopScreen extends StatelessWidget {
  const DeskTopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Desktop"),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            height: MediaQuery.of(context).size.height * 0.35,
            color: AppColor.kMainColor.withOpacity(0.5),
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height * 0.2,
                  color: AppColor.kMainColor.withOpacity(0.3),
                );
              },
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
