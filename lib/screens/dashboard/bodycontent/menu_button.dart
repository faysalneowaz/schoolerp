import 'package:flutter/material.dart';
import 'package:schoolerp/model/dashboard_menuacction.dart';

class ActionButton extends StatelessWidget {
  final AppAction action;

  const ActionButton({
    Key? key,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => action.callback?.call(context),
      child: Container(
        decoration: BoxDecoration(
          color: action.color,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Container(
          margin: const EdgeInsets.only(left: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(action.iconData),
              Text(
                action.label,
                style: TextStyle(
                  color: action.labelColor,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
