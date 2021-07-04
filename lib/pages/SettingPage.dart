import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import '../constants.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Setting',
          style: TextStyle(
            color: kTextGrayColor,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            new SettingItem(
              iconData: FontAwesome.user,
              name: 'Name',
              info: 'John Doe',
            ),
            new SettingItem(
              iconData: MaterialIcons.email,
              name: 'Email',
              info: 'JohnDoe@gmail.com',
            ),
            new SettingItem(
              iconData: MaterialIcons.phone,
              name: 'Telephone',
              info: '+2456454545445',
            ),
            new SettingItem(
              iconData: FontAwesome.map_marker,
              name: 'Address',
              info: 'Chandigarh',
            ),
            new SettingItem(
              iconData: Entypo.wallet,
              name: 'Payment',
              info: 'Paytm',
            ),
            new SettingItem(
              iconData: Ionicons.ios_notifications,
              name: 'Notifications',
              info: 'Chat, Cart',
            ),
            new SettingItem(
              iconData: MaterialIcons.phone,
              name: 'Contact us',
              info: '+79564545445',
            ),
            new SettingItem(
              iconData: Entypo.wallet,
              name: 'Terms and conditions',
            )
          ],
        ),
      ),
    );
  }
}

class SettingItem extends StatelessWidget {
  final IconData iconData;
  final String name;
  final String info;

  const SettingItem({this.iconData, this.name, this.info});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          iconData,
          color: kGoodGreenColor,
          size: 20,
        ),
      ),
      title: Text(
        name,
        style: TextStyle(
          fontSize: 18,
          color: kTextGrayColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        info != null ? info : "",
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: kTextLightGrayColor,
          fontSize: 15,
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: Icon(Ionicons.ios_arrow_forward),
    );
  }
}
