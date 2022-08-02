import 'package:flutter/material.dart';
import 'package:loginpage/demo2.dart';

class DamoPAge extends StatefulWidget {
  DamoPAge({Key? key}) : super(key: key);

  @override
  State<DamoPAge> createState() => _DamoPAgeState();
}

class _DamoPAgeState extends State<DamoPAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                hintText: "50"
              ),
            ),
             const SizedBox(height: 10,),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                hintText: "100"
              ),
            ),
             const SizedBox(height: 10,),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                hintText: "150"
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              height: 50,
              width: 250,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: ((context) => const 
                DemoPage2())));
              },child: const Text("Strst")))
          ],
        ),
      ),
    );
  }
}