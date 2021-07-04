import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../constants.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Cart',
          style: TextStyle(
            color: kTextGrayColor,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: ListView(
                children: <Widget>[
                  new CartItemWidget(
                    cartItemUrl:
                        'https://images.unsplash.com/photo-1459411621453-7b03977f4bfc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=818&q=80',
                    cartItemName: 'Borocolli',
                    contentQuantity: '500 gram',
                    originalPrice: 'Rp20.000',
                    newPrice: 'Rp40.000',
                    quantity: 5,
                  ),
                  Divider(
                    color: kGoodGrayColor,
                  ),
                  new CartItemWidget(
                    cartItemUrl:
                        'https://images.pexels.com/photos/928251/pexels-photo-928251.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                    cartItemName: 'Onion',
                    contentQuantity: '1 kilogram',
                    originalPrice: 'Rp20.000',
                    newPrice: 'Rp40.000',
                    quantity: 2,
                  ),
                  Divider(
                    color: kGoodGrayColor,
                  ),
                  new CartItemWidget(
                    cartItemUrl:
                        'https://media.istockphoto.com/photos/tuna-fish-on-banana-leaf-plate-picture-id859756920',
                    cartItemName: 'Fish',
                    contentQuantity: '4 Kilogram',
                    originalPrice: 'Rp20.000',
                    newPrice: 'Rp40.000',
                    quantity: 1,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Material(
                color: Colors.white,
                elevation: 16,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(16),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Total',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Rp52,000',
                              style: TextStyle(
                                color: kGoodOrangeColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(16),
                        child: TextButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          color: kGoodOrangeColor,
                          child: Text(
                            'Checkout',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CartItemWidget extends StatefulWidget {
  final String cartItemUrl;
  final String cartItemName;
  final String contentQuantity;
  final String originalPrice;
  final String newPrice;
  int quantity;

  CartItemWidget(
      {this.cartItemUrl,
      this.cartItemName,
      this.contentQuantity,
      this.originalPrice,
      this.newPrice,
      this.quantity});

  @override
  _CartItemWidgetState createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          Checkbox(
            activeColor: kGoodGreenColor,
            value: true,
            onChanged: (value) {},
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Image.network(
              widget.cartItemUrl,
              height: 125,
              width: 125,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      widget.cartItemName,
                      style: TextStyle(
                        color: kTextGrayColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Icon(
                      MaterialIcons.delete,
                      color: kGoodGrayColor,
                    )
                  ],
                ),
                Text(
                  widget.contentQuantity,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: kGoodGreenColor,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.newPrice,
                  style: TextStyle(
                    color: kGoodGrayColor,
                    fontSize: 15,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      widget.originalPrice,
                      style: TextStyle(
                        color: kGoodOrangeColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          MinusQuantityButton(onPressed: () {
                            setState(() {
                              if (widget.quantity - 1 >= 1) {
                                widget.quantity -= 1;
                              }
                            });
                          }),
                          Text(
                            widget.quantity.toString(),
                            style: TextStyle(
                              color: kGoodGreenColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          AddQuantityButton(
                            onPressed: () {
                              setState(() {
                                widget.quantity += 1;
                              });
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}

class MinusQuantityButton extends StatelessWidget {
  final Function onPressed;

  MinusQuantityButton({@required this.onPressed});

  @override
  Widget build(BuildContext context) {
    var textButton = TextButton(
      child: Text(
        '-',
        style: TextStyle(
          color: kGoodGreenColor,
        ),
        textAlign: TextAlign.center,
      ),
      onPressed: () {
        onPressed();
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: kGoodGrayColor,
        ),
      ),
    );
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SizedBox(
        height: 30,
        width: 30,
        child: textButton,
      ),
    );
  }
}

class AddQuantityButton extends StatelessWidget {
  final Function onPressed;

  AddQuantityButton({@required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SizedBox(
        height: 30,
        width: 30,
        child: TextButton(
          color: kGoodGreenColor,
          child: Text(
            '+',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
          ),
          onPressed: () {
            onPressed();
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
