import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isFonts=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:(isFonts)?Colors.black:Colors.white,
        elevation: 0,
        title: const Text('facebook',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 30),),
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.search),
            color: Colors.grey.shade800,
          ),
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.camera_alt),
            color: Colors.grey.shade800,
          ),
          IconButton(
            onPressed: (){
              setState(() {
               isFonts=!isFonts;
              });
            },
            icon:(isFonts)? Icon(CupertinoIcons.sun_min_fill,color: Colors.grey.shade800,):Icon(CupertinoIcons.moon,color: Colors.grey.shade800,),
          )
        ],
      ),
      backgroundColor: Colors.grey.shade600,
      body: ListView(
        children: [
          Container(
            color: (isFonts)?Colors.black:Colors.white,
            padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
            height: 120,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      //avatar
                      Container(
                        width: 45,
                        height: 45,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/user_5.jpeg'),
                            fit: BoxFit.cover
                          )
                        ),
                      ),

                      const SizedBox(width: 13,),

                      //search
                      Expanded(
                        child: Container(
                          height: 45,
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                            color: (isFonts)?Colors.black:Colors.white,
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(
                              width: 1,
                              color: Colors.grey.shade500
                            )
                          ),
                          child: Center(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                hintText: "What's one your mind",
                                hintStyle: TextStyle(color: Colors.grey.shade700)
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 7,),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //live
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: (){},
                              icon: const Icon(Icons.video_call,color: Colors.red,),
                            ),
                            const SizedBox(width: 5,),
                            Text('Live',style: TextStyle(color: Colors.grey.shade700),)
                          ],
                        ),
                      ),
                      //divider
                      Container(
                        width: 1,
                        margin: EdgeInsets.symmetric(vertical: 14),
                        color: Colors.grey,
                      ),
                      //photo
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: (){},
                              icon: const Icon(Icons.photo,color: Colors.green,),
                            ),
                            const SizedBox(width: 5,),
                            Text('Photo',style: TextStyle(color: Colors.grey.shade700))
                          ],
                        ),
                      ),
                      //divider
                      Container(
                        width: 1,
                        margin: EdgeInsets.symmetric(vertical: 14),
                        color: Colors.grey,
                      ),
                      //check in
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: (){},
                              icon: const Icon(Icons.location_on,color: Colors.red,),
                            ),
                            const SizedBox(width: 5,),
                            Text('Check in',style: TextStyle(color: Colors.grey.shade700))
                          ],
                        ),
                      ),
                    ]
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.symmetric(vertical: 10),
            color:(isFonts)?Colors.black:Colors.white,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 10,),
                _makeStory(
                  storyImage: 'assets/images/story_5.jpeg',
                  userImage: 'assets/images/user_5.jpeg',
                  userName: 'Eva Elfie'
                ),
                _makeStory(
                    storyImage: 'assets/images/story_4.jpeg',
                    userImage: 'assets/images/user_4.jpeg',
                    userName: 'User Four'
                ),
                _makeStory(
                    storyImage: 'assets/images/story_3.jpeg',
                    userImage: 'assets/images/user_3.jpeg',
                    userName: 'User There'
                ),
                _makeStory(
                    storyImage: 'assets/images/story_2.jpeg',
                    userImage: 'assets/images/user_1.jpeg',
                    userName: 'User For'
                ),
              ],
            ),
          ),
          _makeContent(
            userName: 'alisa_12',
            userImage1: "assets/images/feed_2.jpeg",
            userImage2: "assets/images/feed_3.jpeg",
            userAvatar: 'assets/images/user_2.jpeg',
            commentCount: '2322',
            contentAbout: "Men bugun matatsikl haydadim va kuchugimning xiyonati uchun uni o'ldirdim \u{1f91f} A U F \u{1f91f}",
            favoriteCount: '454',
            timeAgo: '12 min'
          ),
          _makeContent(
              userName: 'unkown01',
              userImage1: "assets/images/feed_1.jpeg",
              userImage2: "assets/images/feed_4.jpeg",
              userAvatar: 'assets/images/user_5.jpeg',
              commentCount: '56334',
              contentAbout: "Tog' yonbag'irlariga bugun dam olishga chiqdik u yerlar juda chiroyli. Biz kechqurun chodirda dam oldik",
              favoriteCount: '342',
              timeAgo: '23 hours'
          ),
        ],
      ),
    );
  }

  Widget _makeStory({storyImage,userImage,userName}) {
    return AspectRatio(
      aspectRatio: 1.3/2,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(storyImage),
            fit: BoxFit.cover
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.2),
              ]
            )
          ),
          padding: EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Container(
               height: 40,
               width: 40,
               decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 border: Border.all(width: 2,color: Colors.blue),
                 image: DecorationImage(
                   image: AssetImage(userImage),
                   fit: BoxFit.cover
                 )
               ),
             ),
             Text(
                userName,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _makeContent({userAvatar,userImage1,userImage2,userName,timeAgo,contentAbout,favoriteCount,commentCount}){
    return Container(
      height: MediaQuery.of(context).size.width+40,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: 10),
      color: (isFonts)?Colors.black:Colors.white,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey.shade200,
                          radius: 25,
                          foregroundImage: AssetImage(userAvatar),
                        ),
                        SizedBox(width: 7,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("$userName ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.grey.shade700),),
                            Text('$timeAgo ago',style: TextStyle(color: Colors.grey,),)
                          ],
                        )
                      ],
                    ),
                    PopupMenuButton(
                      color: (isFonts)? Colors.grey.shade800:Colors.white,
                      icon: Icon(Icons.keyboard_control_outlined,color: Colors.grey.shade600,size: 30,),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                      itemBuilder: (context) => [
                        PopupMenuItem(child: Text('Hello World',style: TextStyle(color: Colors.white.withOpacity(.6)),))
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: 35,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '$contentAbout ',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 15,
                          fontWeight: FontWeight.normal
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Image(
                    image: AssetImage(userImage1),
                    height: double.infinity,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Image(
                    height: double.infinity,
                    width: double.infinity,
                    image: AssetImage(userImage2),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle
                          ),
                          child: Icon(CupertinoIcons.hand_thumbsup_fill,color: Colors.white,size: 13,),
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          margin: EdgeInsets.only(left: 16.5),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle
                          ),
                          child: Icon(CupertinoIcons.heart_fill,color: Colors.white,size: 13,),
                        )
                      ],
                    ),
                    SizedBox(width: 7,),
                    Text('$favoriteCount ',style: TextStyle(color: Colors.grey.shade500),)
                  ],
                ),
                Text("$commentCount Comments",style: TextStyle(color: Colors.grey.shade500),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}
