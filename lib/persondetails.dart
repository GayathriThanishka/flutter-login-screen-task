import 'package:flutter/material.dart';
import 'package:list_task/list/listt.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonDetail extends StatefulWidget {
  const PersonDetail({super.key});

  @override
  State<PersonDetail> createState() => _PersonDetailState();
}

class _PersonDetailState extends State<PersonDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Person Details",style:GoogleFonts.dmSans()), centerTitle: true,),
       
      
      backgroundColor: const Color.fromARGB(255, 179, 244, 177),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: personDetailList.length,
          itemBuilder: (context, index) {
            final data = personDetailList[index];
            return Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                     padding:const EdgeInsets.all(20),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:  Colors.white,),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Text(data.name,
                                style: TextStyle(fontSize: 13,fontWeight: FontWeight.w800),),
                            
                            Text(data.mail,style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600,color: Colors.grey)),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.calendar_month_outlined),
                                    Text('${data.age}',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.man),
                                    Text(data.gender,style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.access_time_rounded),
                                    Text(data.bloodgroup,style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500)),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                     Positioned(
                      top: -20,
                      left: -20,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(data.image),
                        
                      ),
                    ),
                    Positioned(
                      bottom: -20,
                      right: 15,
                      child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.remove_red_eye_outlined,color: Colors.black,),
                          label: const Text("View More",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Colors.black)),
                          style: OutlinedButton.styleFrom(
        
                            backgroundColor: Color(0XFFC85B72),
                            
                              shape: RoundedRectangleBorder(
                                
                                  borderRadius: BorderRadius.circular(8)))),
                    )
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
