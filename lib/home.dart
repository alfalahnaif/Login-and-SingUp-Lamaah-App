import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tasktwo/widgets/app_large_text.dart';
import 'package:tasktwo/widgets/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
  var images ={
    "balloning.png":"المستقبل",
    "hiking.png":"توب كلي",
    "kayaking.png":"إنجاز",
    "snorkling.png":"برفكت",

  };
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // menu text
          Container(
            padding: const EdgeInsets.only(top: 70, right: 20),
            child: Row(
              children: [
                Icon(Icons.menu, size: 30, color: Colors.black54),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius:  BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.5),
                    image: DecorationImage(
                          image: AssetImage(
                            "assets/naif.png",
                          ),
                         fit: BoxFit.cover,
                          ),
                    ),
                ),
            ]
            ),
          ),
          SizedBox(height: 40,),
          //Service text
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: Text("خدماتنا", style: TextStyle(fontSize: 40,fontWeight: FontWeight.w400),),
          ),
          SizedBox(height: 30,),
          //tabbar
          Container(
            child: Align(
              alignment: Alignment.centerRight,
              child: TabBar(
                labelPadding: const EdgeInsets.only(left: 20, right: 20),
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: CircleTabIndicatrotor(color: Colors.black45, radius: 4),
                tabs: [
                  Tab(text: "النظافة",),
                  Tab(text: "الشركات",),
                  Tab(text: "النشرة التوعوية",),
                ],
                ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            height: 300,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) { 
                    return 
                    Container(
                    margin: const EdgeInsets.only(right: 15, top: 10),
                    width: 200,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/luca.jpg",
                        ),
                        fit: BoxFit.cover,
                        ),
                    ),
                  );
                   },
                  
                ),
                Text("Hi"),
                Text("Hi"),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween ,
            children: [
              AppLargeText(text: "موصى لك", size: 22,),
              AppText(text: "المزيد", color: Colors.grey,)
            ],
         ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 100,
            width: double.maxFinite,
            margin: const EdgeInsets.only(left: 20),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (_ , index){
              return Container(
                margin: const EdgeInsets.only(left: 30),
                child: Column(
                  children: [
                    Container(
                      //margin: const EdgeInsets.only(right: 50, ),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/${images.keys.elementAt(index)}",
                          ),
                          fit: BoxFit.cover,
                          ),
                      ),
                    ),
                     Container(
                       child: AppText(text: images.values.elementAt(index),
                       color: Colors.grey,
                       ),
                     ),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

class CircleTabIndicatrotor extends Decoration{
  final Color color;
    double radius;
    CircleTabIndicatrotor({required this.color, required this.radius});
  @override 
  BoxPainter createBoxPainter([VoidCallback? onChanged]){
    return _CirclePainter(color:color, radius:radius);
  }

}
  class _CirclePainter extends BoxPainter{
    final Color color;
    double radius;
    _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, 
  ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color=color;
    _paint.isAntiAlias=true;
    final Offset circleOffset = Offset(configuration.size!.width/2 - radius/2, configuration.size!.height- radius);
    canvas.drawCircle(offset+circleOffset, radius, _paint);

  }

  }