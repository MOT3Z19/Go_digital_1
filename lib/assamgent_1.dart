import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

  List<String> Photo = [
    'https://images.unsplash.com/photo-1544399623-6dd65715c966?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGhlaWdodCUyMHBob3RvfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1549792038-12b3d8537173?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGhlaWdodCUyMHBob3RvfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1486651506050-9b67d18091e3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGhlaWdodCUyMHBob3RvfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1618219985954-a6872fcb1f89?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGhlaWdodCUyMHBob3RvfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60',
    'https://plus.unsplash.com/premium_photo-1661918494186-607712ace3c9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGhlaWdodCUyMHBob3RvfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                  width: double.infinity,
                  height: 550,
                  child: Image.network(
                    'https://images.unsplash.com/photo-1609265917433-c3ddb2aaf103?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2853&q=80',
                    width: double.infinity,
                    height: 400,
                  )),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back_ios_new_rounded,
                            color: Colors.white)),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    'UAE TOWER',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                    'This sea image captivates with its endless expanse of azure'
                    'waters meeting the horizon beneath a serene,'
                    'cloud-studded sky. Gentle waves kiss the sandy shore, inviting relaxation.'
                    'The sun\'s golden rays dance upon the water\'s surface, creating'
                    'a tranquil and idyllic coastal scene that beckons one to immerse in its beauty.'
                    ''),
                SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    'Picture',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),

                Container(
                  height: 80,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                      itemCount: Photo.length,
                      itemBuilder: (context , index){
                      if(index == 4){
                        return PhotoWidgetBirr(Photo[4]);

                      }else{
                        return PhotoWidget(Photo[index]);
                      }
                  }, separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(width: 20,);
                  },),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text('More in Bali', style: TextStyle(color: Colors.green.shade800,fontWeight: FontWeight.bold,fontSize: 18),),
                    SizedBox(width: 5,),
                    Icon(Icons.arrow_forward_ios_outlined,color: Colors.green.shade800)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PhotoWidget extends StatelessWidget {
  String ImageUrl;
PhotoWidget(this.ImageUrl);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      child: Container(
        width: 60,
          height: 20,
          decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
        child: Image.network(ImageUrl,fit: BoxFit.cover,),
      ),
    );
  }
}
class PhotoWidgetBirr extends StatelessWidget {
  String ImageUrl;
  PhotoWidgetBirr(this.ImageUrl);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: 60,
        height: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Stack(
          children: [
            Container(
              color: Colors.black,
                width: 60,
                height: 100,
                child: Opacity(opacity: .4,
                child: Image.network(ImageUrl,fit: BoxFit.cover,height: 40,))),
            Center(child: Text('+20',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),

          ],
        ),

      ),
    );
  }
}

