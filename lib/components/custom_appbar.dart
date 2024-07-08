import 'package:flutter/material.dart';

import '../utils/config.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget{
  const CustomAppBar(
      {super.key, this.appTitle, this.route, this.actions, this.icon});

  Size get preferredSize => Size.fromHeight(60);

  final String? appTitle;
  final String? route;
  final List<Widget>? actions;
  final Icon? icon;
  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        widget.appTitle!,
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
      leading: widget.icon != null
          ? Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  color: Config.primaryColor,
                  borderRadius: BorderRadius.circular(10)),
              child: IconButton(
                onPressed: () {
                  if (widget.route != null) {
                    Navigator.of(context).pushNamed(widget.route!);
                  }else{
                    Navigator.of(context).pop();
                  }
                },
                icon: widget.icon!,
                iconSize: 16,
                color: Colors.white,
              ),
            )
          : null,
          actions: widget.actions ?? null,
    );
  }
}
