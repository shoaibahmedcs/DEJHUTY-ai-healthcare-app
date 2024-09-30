import 'package:flutter/material.dart';

class DoctorsScreen extends StatefulWidget {
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
          color: Color(0xff3A9864),
          height: 40,
          width: double.infinity,
          alignment: Alignment.center,
          child: Text('Doctor',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Row(
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
                          child: Row(
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
                          child: Row(
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
                    SizedBox(
                      height: 10,
                    ),
                    (!isVisiting) ?  Column(
                      children: [
                        DoctorsCard(),
                        SizedBox(
                          height: 10,
                        ),
                        DoctorsCard(),
                        SizedBox(
                          height: 10,
                        ),
                        DoctorsCard(),
                        SizedBox(
                          height: 10,
                        ),
                        DoctorsCard(),
                        SizedBox(
                          height: 10,
                        ),
                        DoctorsCard(),
                        SizedBox(
                          height: 10,
                        ),
                        DoctorsCard(),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ) : Container(
                      // height: 140,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          SizedBox(
                          height: 10,

                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/doctorMujtaba.png', height: 120, width: 120),
                              Container(
                                child: Column(
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
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 40,
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: Color(0xff3A9864),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              )

                            ),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Clinic Visit', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                          ),
                          Container(
                            // height: 40,
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),

                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],

                            ),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Clinic Address;', style: TextStyle(color: Color(0xff000000),)),
                                    Text('Serum Clinic, Rose Dam', style: TextStyle(color: Color(0xff333333).withOpacity(0.6),)),
                                    Text('Near Police Station, West', style: TextStyle(color: Color(0xff333333).withOpacity(0.6))),
                                    Text('Ham', style: TextStyle(color: Color(0xff333333).withOpacity(0.6))),
                                    Container(
                                      width: double.infinity,
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text('Free Consult Follow-Up 7 Days Post Consultation', style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xff333333).withOpacity(0.3)))),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),


                                  ],
                                )
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ElevatedButton(
                            onPressed: (){}, child: Text('Chat Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Color(0xff3A9864),),
                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              ),


                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text('About Me: ',
                            style: TextStyle(
                              color: Color(0xff3A9864),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),

                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('A career as a doctor is a clinical professional that involves providing services in healthcare facilities. Individuals in the doctor\'s career path are responsible for diagnosing, examining, and identifying diseases, disorders, and illnesses of patients.',
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
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Color(0xffC5C3C3).withOpacity(0.6),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/doctor.png', height: 100, width: 100),
          Column(
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
          Spacer(),
          Column(
            children: [
              Image.asset('assets/images/steth.png', height: 60, width: 60),
              ElevatedButton(onPressed: (){
                visitDoctor();
              }, child: Text('Visit',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xff3A9864)),
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
