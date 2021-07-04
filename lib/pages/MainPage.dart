import 'package:farme_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

//import 'CartPage.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: kGoodGreenColor,
          title: Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              'Hi Gursheesh',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(20))),
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 20, top: 5),
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 3, color: Colors.white)),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://stylesatlife.com/wp-content/uploads/2015/07/Hairstyles-for-Small-Faces2.jpg'),
                      maxRadius: 25,
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 3, color: Colors.white)),
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 8,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(190),
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: TextField(
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      filled: true,
                      fillColor: kGoodGreenColor3,
                      hintText: 'Enter food name',
                      hintStyle:
                          TextStyle(color: Colors.white.withOpacity(0.5)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide.none),
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: Icon(
                          Feather.search,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new AppBarItem(
                        icon: FontAwesome.tree,
                        name: 'Tree',
                      ),
                      new AppBarItem(
                        icon: AntDesign.apple1,
                        name: 'apple',
                      ),
                      new AppBarItem(
                        icon: MaterialCommunityIcons.fish,
                        name: 'Fish',
                      ),
                      new AppBarItem(
                        icon: Entypo.grid,
                        name: 'Grid',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
      body: Container(
        margin: EdgeInsets.only(left: 20),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'Takashimura',
                        style: TextStyle(
                          color: kTextGrayColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TextBox(
                        text: '05',
                      ),
                      Text(
                        ':',
                        style: TextStyle(
                          color: kGoodGreenColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextBox(
                        text: '31',
                      ),
                      Text(
                        ':',
                        style: TextStyle(
                          color: kGoodGreenColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextBox(
                        text: '28',
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: Text(
                      'Lihat Semua',
                      style: TextStyle(
                        color: kGoodOrangeColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  new ListViewItem(
                    imageUrl:
                        'https://images.unsplash.com/photo-1459411621453-7b03977f4bfc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=818&q=80',
                    discount: 50,
                    name: 'Borocolli',
                    category: 'Gold Farm',
                    quantity: '500 Gram',
                  ),
                  new ListViewItem(
                    imageUrl:
                        'https://images.pexels.com/photos/928251/pexels-photo-928251.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                    discount: 50,
                    name: 'Onion',
                    category: 'Lokal',
                    quantity: '1 Kilogram',
                  ),
                  new ListViewItem(
                    imageUrl:
                        'https://media.istockphoto.com/photos/tuna-fish-on-banana-leaf-plate-picture-id859756920',
                    discount: 50,
                    name: 'Fish',
                    category: 'Seafood',
                    quantity: '4 Kilogram',
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ListViewItem extends StatelessWidget {
  final int discount;
  final String imageUrl;
  final String name;
  final String category;
  final String quantity;

  const ListViewItem(
      {@required this.discount,
      @required this.imageUrl,
      @required this.name,
      @required this.category,
      @required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      padding: EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new DiscountImageWidget(
            discount: discount,
            imageUrl: imageUrl,
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(
                    color: kTextGrayColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  decoration: BoxDecoration(
                      color: kGoodGreenColor4,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    category,
                    style: TextStyle(
                      color: kGoodGreenColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            quantity,
            style: TextStyle(
              color: kGoodGreenColor,
              fontSize: 11,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Text(
                'Rp20rb',
                style: TextStyle(
                  color: kGoodGrayColor,
                  fontSize: 10,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'Rp10rb',
                style: TextStyle(
                  color: kGoodOrangeColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class DiscountImageWidget extends StatelessWidget {
  final int discount;
  final String imageUrl;

  const DiscountImageWidget({@required this.discount, @required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      child: Stack(
        children: <Widget>[
          Image.network(
            imageUrl,
            height: 125,
            width: 165,
            fit: BoxFit.fill,
          ),
          Container(
            decoration: BoxDecoration(
                color: kGoodGreenColor,
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(10))),
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 3,
            ),
            child: Text(
              '$discount% off',
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          )
        ],
      ),
    );
  }
}

class TextBox extends StatelessWidget {
  final String text;

  const TextBox({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(5)),
        border: Border.all(
          color: kGoodGrayColor,
          width: 1,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: kGoodGreenColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class AppBarItem extends StatelessWidget {
  final IconData icon;
  final String name;

  const AppBarItem({@required this.icon, @required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: <Widget>[
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: new GradientIconWidget(
              icon: icon,
            ),
          ),
          Text(
            name,
            style: TextStyle(color: Colors.white, fontSize: 15),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class GradientIconWidget extends StatelessWidget {
  final IconData icon;

  const GradientIconWidget({@required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: ShaderMask(
        blendMode: BlendMode.srcIn,
        child: Icon(icon),
        shaderCallback: (rect) {
          return LinearGradient(
            colors: [kGoodGreenColor2, kGoodGreenColor],
            begin: FractionalOffset.topRight,
            end: FractionalOffset.bottomLeft,
          ).createShader(rect);
        },
      ),
    );
  }
}

//child: ShaderMask(
//shaderCallback: (rect) {
//return LinearGradient(
//colors: [kGoodGreenColor2, kGoodGreenColor],
//begin: FractionalOffset.topRight,
//end: FractionalOffset.bottomLeft,
//).createShader(rect);
//},
//child: Icon(
//FontAwesome.tree,
//),
//),
