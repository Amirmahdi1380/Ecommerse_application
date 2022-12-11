import 'package:flutter/material.dart';
import 'package:mobile_shop/screens/home_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              getSearchInput(),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'امیرمهدی نورکاظمی',
                      style: TextStyle(fontFamily: 'SB', fontSize: 14),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      '09362957108',
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Wrap(
                      runSpacing: 20,
                      spacing: 20,
                      children: [
                        categoryHorizontalListView(),
                        categoryHorizontalListView(),
                        categoryHorizontalListView(),
                        categoryHorizontalListView(),
                        categoryHorizontalListView(),
                        categoryHorizontalListView(),
                        categoryHorizontalListView(),
                        categoryHorizontalListView(),
                        categoryHorizontalListView(),
                        categoryHorizontalListView(),
                        categoryHorizontalListView(),
                        categoryHorizontalListView(),
                        categoryHorizontalListView(),
                        categoryHorizontalListView(),
                      ],
                    )
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 32),
                child: Column(
                  children: [
                    Text(
                      'اپل شاپ',
                      style: TextStyle(fontFamily: 'SB'),
                    ),
                    Text(
                      'V-1.0.00',
                      style: TextStyle(fontFamily: 'SB'),
                    ),
                    Text(
                      'Instagram.com/amir__amnk',
                      style: TextStyle(fontFamily: 'SB'),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget getSearchInput() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 44, vertical: 20),
    child: Container(
      height: 46,
      width: 340,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset('assets/images/apple_logo.png'),
            SizedBox(
              width: 100,
            ),
            Text(
              'حساب کاربری',
              style: TextStyle(
                  fontFamily: 'SB', fontSize: 16, color: Color(0xff3B5EDF)),
            ),
          ],
        ),
      ),
    ),
  );
}
