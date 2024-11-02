import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidht = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.chevron_left),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    const Expanded(
                      child: Text(
                        'Profile',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenWidht * 0.1,
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Color(0xff3A9864)),
                      ),
                      child: Image.asset('assets/images/profile.png'),
                    ),
                    Positioned(child: Container(
                      height: 35,
                      width: 35,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(17.5),
                          border: Border.all(color: Color(0xff3A9864)),
                        ),
                        child: Icon(Icons.camera_alt, color: Color(0xff3A9864),)), right: 0, bottom: 0,)
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Text(
                  'Mr. PEPER MAN',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff3A9864),
                  ),
                ),
                Text(
                  'peper@gmail.com',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff3A9864),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                ElevatedButton(
                  onPressed: (){}, child: Text('Edit Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                ), style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      horizontal: 20, vertical: 10
                  ),
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: Color(0xff3A9864),
                 ),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Age',
                      style: TextStyle(
                        color: Color(0xff3A9864),
                        fontSize: 20,
                      ),),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          color: Color(0xff3A9864).withOpacity(0.8),
                            borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Color(0xff3A9864)),
                        ),
                        child: Text('25',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Gender',
                        style: TextStyle(
                          color: Color(0xff3A9864),
                          fontSize: 20,
                        ),),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          color: Color(0xff3A9864).withOpacity(0.8),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Color(0xff3A9864)),
                        ),
                        child: Text('Robot',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Zip Code',
                        style: TextStyle(
                          color: Color(0xff3A9864),
                          fontSize: 20,
                        ),),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          color: Color(0xff3A9864).withOpacity(0.8),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Color(0xff3A9864)),
                        ),
                        child: Text('26500',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('State',
                        style: TextStyle(
                          color: Color(0xff3A9864),
                          fontSize: 20,
                        ),),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          color: Color(0xff3A9864).withOpacity(0.8),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Color(0xff3A9864)),
                        ),
                        child: Text('USA',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('City',
                        style: TextStyle(
                          color: Color(0xff3A9864),
                          fontSize: 20,
                        ),),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          color: Color(0xff3A9864).withOpacity(0.8),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Color(0xff3A9864)),
                        ),
                        child: Text('Sukkur',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Address',
                        style: TextStyle(
                          color: Color(0xff3A9864),
                          fontSize: 20,
                        ),),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          color: Color(0xff3A9864).withOpacity(0.8),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Color(0xff3A9864)),
                        ),
                        child: Text('Airport Road Sukkur',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,),
                        ),
                      )
                    ],
                  ),
                ),
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}