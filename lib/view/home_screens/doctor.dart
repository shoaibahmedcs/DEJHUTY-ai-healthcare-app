import 'package:flutter/material.dart';

class DoctorsScreen extends StatefulWidget {
  const DoctorsScreen({super.key});

  @override
  State<DoctorsScreen> createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
  bool isVisiting = false;

  void visitDoctor(){
    isVisiting = true;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: const Color(0xff3A9864),
          height: 40,
          width: double.infinity,
          alignment: Alignment.center,
          child: const Text('Doctor',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: const Row(
                            children: [
                              Text('Location',
                                style: TextStyle(
                                  color: Color(0xff3A9864),
                                  fontSize: 16,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_down, color: Color(0xff3A9864),)
                            ],
                          ),
                        ),
                        Container(
                          child: const Row(
                            children: [
                              Text('Organization',
                                style: TextStyle(
                                  color: Color(0xff3A9864),
                                  fontSize: 16,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_down, color: Color(0xff3A9864),)
                            ],
                          ),
                        ),
                        Container(
                          child: const Row(
                            children: [
                              Text('Specialize',
                                style: TextStyle(
                                  color: Color(0xff3A9864),
                                  fontSize: 16,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_down, color: Color(0xff3A9864),)
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    (!isVisiting) ?  Column(
                      children: [
                        DoctorsCard(),
                        const SizedBox(
                          height: 10,
                        ),
                        DoctorsCard(),
                        const SizedBox(
                          height: 10,
                        ),
                        DoctorsCard(),
                        const SizedBox(
                          height: 10,
                        ),
                        DoctorsCard(),
                        const SizedBox(
                          height: 10,
                        ),
                        DoctorsCard(),
                        const SizedBox(
                          height: 10,
                        ),
                        DoctorsCard(),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ) : Container(
                      // height: 140,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          const SizedBox(
                          height: 10,

                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/doctorMujtaba.png', height: 120, width: 120),
                              Container(
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text('Dr.Mujtaba Memon',
                                      style: TextStyle(
                                        color: Color(0xff3A9864),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),

                                    Text('MBBS, MD',
                                      style: TextStyle(
                                        color: Color(0xff1C665E),
                                        fontSize: 12,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    // SizedBox(
                                    //   height: 5,
                                    // ),
                                    Text('Cardiologist',
                                      style: TextStyle(
                                        color: Color(0xff1C665E),
                                        fontSize: 12,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '42 Year Experience',
                                      style: TextStyle(
                                        color: Color(0xff333333),
                                        fontSize: 12,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_rounded, color: Color(0xff333333), size: 15,),
                                        Text('Apollo hospital, west ham',
                                          style: TextStyle(
                                            color: Color(0xff333333),
                                            fontSize: 12,
                                            // fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 40,
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: const BoxDecoration(
                              color: Color(0xff3A9864),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              )

                            ),
                            child: const Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Clinic Visit', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                          ),
                          Container(
                            // height: 40,
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),

                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(0, 3), // changes position of shadow
                                ),
                              ],

                            ),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text('Clinic Address;', style: TextStyle(color: Color(0xff000000),)),
                                    Text('Serum Clinic, Rose Dam', style: TextStyle(color: const Color(0xff333333).withOpacity(0.6),)),
                                    Text('Near Police Station, West', style: TextStyle(color: const Color(0xff333333).withOpacity(0.6))),
                                    Text('Ham', style: TextStyle(color: const Color(0xff333333).withOpacity(0.6))),
                                    SizedBox(
                                      width: double.infinity,
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text('Free Consult Follow-Up 7 Days Post Consultation', style: TextStyle(
                                              fontSize: 10,
                                              color: const Color(0xff333333).withOpacity(0.3)))),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),


                                  ],
                                )
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          ElevatedButton(
                            onPressed: (){},
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(const Color(0xff3A9864),),
                                  shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              ), child: Text('Chat Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),


                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text('About Me: ',
                            style: TextStyle(
                              color: Color(0xff3A9864),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),

                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text('A career as a doctor is a clinical professional that involves providing services in healthcare facilities. Individuals in the doctor\'s career path are responsible for diagnosing, examining, and identifying diseases, disorders, and illnesses of patients.',
                            style: TextStyle(
                              color: Color(0xff333333),
                              fontSize: 12,
                            ),
                          ),

                        ],
                      ),
                    ),

                    // DoctorsCard(),
                  ],
                )
            ),
          ),
        ),
      ],
    );
  }
  Widget DoctorsCard(){
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: const Color(0xffC5C3C3).withOpacity(0.6),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/doctor.png', height: 100, width: 100),
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Dr.Name',
                style: TextStyle(
                  color: Color(0xff3A9864),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // SizedBox(
              //   height: 10,
              //
              // ),
              Text('MBBS, MD',
                style: TextStyle(
                  color: Color(0xff1C665E),
                  fontSize: 15,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              // SizedBox(
              //   height: 5,
              // ),
              Text('Cardiologist',
                style: TextStyle(
                  color: Color(0xff1C665E),
                  fontSize: 15,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '42 Year Experience',
                style: TextStyle(
                  color: Color(0xff333333),
                  fontSize: 15,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Icon(Icons.location_on_rounded, color: Color(0xff333333), size: 15,),
                  Text('Apollo hospital, west ham',
                    style: TextStyle(
                      color: Color(0xff333333),
                      fontSize: 10,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
          const Spacer(),
          Column(
            children: [
              Image.asset('assets/images/steth.png', height: 60, width: 60),
              ElevatedButton(onPressed: (){
                visitDoctor();
              },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(const Color(0xff3A9864)),
                ), child: Text('Visit',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

// class DoctorsCard extends StatelessWidget {
//   const DoctorsCard({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
//
