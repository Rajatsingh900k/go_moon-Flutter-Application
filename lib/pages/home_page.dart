import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_moon/widgets/custom_dropdown_button.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.07),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _pageTitle(),
                  _bookRideWidget(),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: _astroImageWidgt(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text("#GoMoon",
        style: TextStyle(
          color: Colors.white,
          fontSize: 70,
          fontWeight: FontWeight.w800,
        ));
  }

  Widget _astroImageWidgt() {
    return Container(
      margin:
          EdgeInsets.only(bottom: _deviceHeight * 0.05, top: _deviceHeight * 0),
      height: _deviceHeight * 0.50,
      width: _deviceWidth * 0.65,
      child: const Text(
        '-App Developed by Rajat Singh',
        textAlign: TextAlign.right,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage("assests/images/moonImg.png"),
        ),
      ),
    );
  }

  Widget _bookRideWidget() {
    return Container(
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropDownWidget(),
          _travellersInfoWidget(),
          _rideButton(),
        ],
      ),
    );
  }

  Widget _destinationDropDownWidget() {
    return CustomDropDownButtonClass(
      values: const [
        'ISRO Moon Colony',
        'NASA Moon Colony',
        'SpaceX Moon Colony',
        'South Pole',
        'Extra-Terristrial Meuseum',
        'InterStellar Meuseum',
        'Real Encounters',
        'Alien Exihibition',
      ],
      width: _deviceWidth,
    );
  }

  Widget _travellersInfoWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropDownButtonClass(
          values: const [
            '1',
            '2',
            '3',
            '4',
            '5',
          ],
          width: _deviceWidth * 0.45,
        ),
        CustomDropDownButtonClass(
          values: const [
            'Economy',
            'Business',
            'First-Class',
          ],
          width: _deviceWidth * 0.40,
        ),
      ],
    );
  }

  Widget _rideButton() {
    return Container(
        margin: EdgeInsets.only(bottom: _deviceHeight * 0.01),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        width: _deviceWidth,
        child: MaterialButton(
          onPressed: () {},
          child: Text(
            "Book Now!",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ));
  }
}
