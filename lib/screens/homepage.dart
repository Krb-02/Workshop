import 'package:flutter/material.dart';
import 'package:threads_app/styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      title: const Text('Search'),
      leading: null,
      backgroundColor: Colors.amberAccent,
      automaticallyImplyLeading: false,
    ),
    body: ListView.separated(
      shrinkWrap: true,
      itemCount: 80,
      separatorBuilder: (context, index){
        return const Divider(
          color: Colors.grey,
          thickness: 1,
        );
      },
      itemBuilder: (context, index){
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Row(
            children: [
              const Icon(Icons.ac_unit_sharp),
              const SizedBox(width: 10),
              Text('index ${index + 1}', style: TextStyles.titleText),
            ],
          ),
        );
      }
    )
    );
  }
}