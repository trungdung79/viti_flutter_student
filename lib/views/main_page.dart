import 'package:flutter/material.dart';
import 'package:tab_bar_view_flutter2/resources/widgets/bar_button.dart';
import 'package:tab_bar_view_flutter2/resources/widgets/picture_view.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('VITI Student List', style: TextStyle(fontSize: 20,),),
            toolbarHeight: 40,
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(child: BarButton(buttonText: 'Thành'),),
                Tab(child: BarButton(buttonText: 'Trâm'),),
                Tab(child: BarButton(buttonText: 'Hùng Anh'),),
                Tab(child: BarButton(buttonText: 'Trinh'),),
                /*
                Tab(child: Text('Thành', style: TextStyle(color: Colors.white),),),
                Tab(child: Text('Trâm', style: TextStyle(color: Colors.white),),),
                Tab(child: Text('Hùng Anh', style: TextStyle(color: Colors.white),),),
                Tab(child: Text('Trinh', style: TextStyle(color: Colors.white),),),
                */
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              PictureView(imageStr: 'assets/images/thanh.png'),
              PictureView(imageStr: 'assets/images/tram.png'),
              PictureView(imageStr: 'assets/images/hunganh.png'),
              PictureView(imageStr: 'assets/images/trinh.png'),
            ],
          ),
        ),
    );
  }
}
