import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import './Home_page_Tab.dart';
class HomeBannerAndSearch extends StatefulWidget {
  Widget search;
  HomeBannerAndSearch({this.search});
  @override
  _HomeBannerAndSearchState createState() => _HomeBannerAndSearchState(search);
}

class _HomeBannerAndSearchState extends State<HomeBannerAndSearch> {
  Widget search;
  List<String> imgs=[
    'https://m.360buyimg.com/mobilecms/s700x280_jfs/t1/122738/9/6114/189183/5efd4609Eafc30bc0/c2e7463862711b7f.png!cr_1125x445_0_171!q70.jpg.dpg',
    'https://m.360buyimg.com/mobilecms/s700x280_jfs/t1/140752/16/1613/147807/5ef862bfE204187f9/f918cdb1518b7711.jpg!cr_1125x445_0_171!q70.jpg.dpg',
    'https://imgcps.jd.com/ling4/100008348542/5omL5py66LSt5a6e5oOg/5aSH6LSn6LaF5YC8/p-5c11d16482acdd181dbc1fc5/4ad48c0f/cr_1125x445_0_171/s1125x690/q70.jpg',
  
];
  _HomeBannerAndSearchState(this.search);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240.0,
      decoration: BoxDecoration(
        color: Colors.white,
        // gradient: RadialGradient(
        //   colors: [Colors.red, Color(0xFF00FFFF)],
        //   radius: 1,
        //   tileMode: TileMode.clamp,
        // ),
      ),
      child: Stack(overflow: Overflow.clip, children: <Widget>[
        Positioned(
          top: -40,
          left: -20,
          child: Container(
            height: 180,
            width: 400,
            // color: Colors.red,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  bottomLeft: Radius.circular(400),
                  bottomRight: Radius.circular(700),
                  topRight: Radius.circular(0)),
              color: Colors.red,
            ),
          ),
        ),
        // search,
        // HomeTab(),
        // Text('data'),
        Container(
           margin: EdgeInsets.only(top:10),
           padding:EdgeInsets.symmetric(horizontal:10.0),
           height: 135.0,
          child: PhysicalModel(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(12),
            clipBehavior: Clip.antiAlias,
            child: Container(
             
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return new Image.network(
                    imgs[index],
                    fit: BoxFit.fill,
                  );
                },

                itemCount: 3,
                // itemWidth: 300.0,
                // layout: SwiperLayout.STACK,
                pagination: new SwiperPagination(),
                // viewportFraction: 0.8,
                itemWidth: 200.0,

                // scale: 0.9,
                // control: new SwiperControl(),
                // containerHeight: 100.0,

                autoplay: true,
                // autoplayDisableOnInteraction: false,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
