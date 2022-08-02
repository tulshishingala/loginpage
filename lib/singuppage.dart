import 'package:flutter/material.dart';

class SingupPage extends StatefulWidget {
  const SingupPage({Key? key}) : super(key: key);

  @override
  State<SingupPage> createState() => _SingupPageState();
}

class _SingupPageState extends State<SingupPage> {
  String? selectedValue = null;
  final _dropdownFormKey = GlobalKey<FormState>();
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(child: Text("Male"), value: "Male"),
      const DropdownMenuItem(child: Text("Female"), value: "Female"),
    ];
    return menuItems;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Text(
                  "SinngUp Page ",
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(
                height: 10,
              ),
               const Padding(
                 padding: EdgeInsets.only(right: 300),
                 child: Text(
                        'Name',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                      ),
               ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Enter your Name',
                ),
              ),
              Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Date Of Birth',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Gender',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          height: 50,
                          child: TextFormField(
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)))),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          height: 60,
                          child: DropdownButtonFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                              ),
                              validator: (value) =>
                                  value == null ? "Select a Gender" : null,
                              dropdownColor: Colors.white,
                              value: selectedValue,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedValue = newValue!;
                                });
                              },
                              items: dropdownItems),
                        ),
                      )
                    ],
                  ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                 padding: EdgeInsets.only(right: 310),
                 child: Text(
                        'Email',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                      ),
               ),
               TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  prefixIcon: Icon(Icons.email),
                  hintText: 'Enter your Email',
                ),
              ),const SizedBox(
                height: 10,
              ),
              const Padding(
                 padding: EdgeInsets.only(right: 300),
                 child: Text(
                        'Password',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                      ),
               ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  prefixIcon: Icon(Icons.lock),
                  hintText: 'Enter your Password',
                ),
              ),
             const SizedBox(
                height: 10,
              ),
               Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      height: 50,
                      width: 350,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Register',
                            style: TextStyle(fontSize: 22),
                          )),
                    ),
                  )
            ],
          ),
        ),
      ),
    );
  }
}