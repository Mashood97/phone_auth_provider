import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
 final title;
 final Function onpressed;

 RoundedButton({@required this.title,@required this.onpressed});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: RaisedButton(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: onpressed,
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6.copyWith(
                color: Colors.white,
            fontSize: 14
              ),
        ),
        color: Theme.of(context).primaryColor,
        splashColor: Colors.green,
      ),
    );
  }
}
