import 'package:flutter/material.dart';
import 'package:my_flutter/util/sp_util.dart';
import 'package:my_flutter/constant/constant.dart';

import '../../widget/textfield/TextFieldAccount.dart';
import '../../widget/textfield/TextFieldPwd.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() => _LoginPageState();
}

String _inputAccount = "";
String _inputPwd = "";

class _LoginPageState extends State<LoginPage>{
  
  @override
  Widget build(BuildContext context) {
      //登录时保存软键盘高度,在聊天界面第一次弹出底部布局时使用
      final keyHeight = MediaQuery.of(context).viewInsets.bottom;
      if (keyHeight != 0) {
          print("键盘高度是:" + keyHeight.toString());
          SpUtil.putDouble(Constant.SP_KEYBOARD_HEGIHT, keyHeight);
      }
      return new Material(
          child: new Scaffold(
              backgroundColor: Colors.white,
              body: new DropdownButtonHideUnderline(
                  child: new ListView(
                      children: <Widget>[
                          buildTile(),
                          new Container(
                              margin:
                              const EdgeInsets.only(left: 20.0, top: 30.0, bottom: 20),
                              child: new Text(
                                  "请输入账号密码",
                                  style: new TextStyle(fontSize: 24.0, color: Colors.black),
                              ),
                          ),
                          new Container(
                              margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                              child: AccountEditText(
                                  contentStrCallBack: (content) {
                                      _inputAccount = content;
                                      setState(() {});
                                  },
                              ),
                          ),
                          new Container(
                              margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                              child: PwdEditText(
                                  contentStrCallBack: (content) {
                                      _inputPwd = content;
                                      setState(() {});
                                  },
                              ),
                          ),
                          //buildLoginBtn(),
                          //buildRegistForget(),
                          //buildOtherLoginWay(),
                      ],
                  )
              ),
          ),
      );
    }
    
    Widget buildTile(){
        return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,//子组件的排列方式为主轴两端对齐
            children: <Widget>[
               new InkWell(
                   child: new Padding(
                       padding: const EdgeInsets.all(12.0),
                       child: Image.asset(
                           Constant.ASSETS_IMG + 'icon_close.png',
                           width: 20.0,
                           height: 20.0,
                       ),
                   ),
                   onTap: (){
                       Navigator.pop(context);
                   },
               ),
               new InkWell(
                   child: new Padding(
                       padding: const EdgeInsets.all(12.0),
                       child: new Text(
                           '帮助',
                           style: new TextStyle(fontSize: 16.0, color: Color(0xff6B91BB)),
                       ),
                   ),
               )
            ],
        );
    }
    
}