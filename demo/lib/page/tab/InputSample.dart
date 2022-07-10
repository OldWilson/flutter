import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputSample extends StatefulWidget {
  @override
  _InputSample createState() => _InputSample();
}

class _InputSample extends State<InputSample> {
  bool _switchSelected = true;
  bool _checkboxSelected = true;

  final GlobalKey _formKey = GlobalKey<FormState>();
  final TextEditingController _unameController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    _controller.text = 'hello';
    _controller.selection =
        TextSelection(baseOffset: 2, extentOffset: _controller.text.length);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextField(
          decoration: const InputDecoration(
            labelText: 'username',
            hintText: 'username or mail',
            prefixIcon: Icon(Icons.person),
          ),
          controller: _controller,
          onChanged: (v) {
            print(v);
          },
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
          ],
        ),
        const TextField(
          decoration: InputDecoration(
              labelText: "password",
              hintText: "your login password",
              prefixIcon: Icon(Icons.lock)),
          obscureText: true,
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(10.0),
            labelText: "password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          inputFormatters: [
            LengthLimitingTextInputFormatter(6),
            FilteringTextInputFormatter.digitsOnly,
          ],
        ),
        Row(
          children: [
            Switch(
                value: _switchSelected,
                onChanged: (value) {
                  setState(() {
                    _switchSelected = value;
                  });
                }),
            const Text('open'),
          ],
        ),
        Checkbox(
            value: _checkboxSelected,
            activeColor: Colors.red,
            onChanged: (value) {
              setState(() {
                _checkboxSelected = value!;
              });
            }),
        Expanded(child: Container(
          height: 1000,
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                TextFormField(
                  controller: _unameController,
                  decoration: const InputDecoration(
                    labelText: "用户名",
                    hintText: "用户名或邮箱",
                    icon: Icon(Icons.person),
                  ),
                  // 校验用户名
                  validator: (v) {
                    return v!.trim().isNotEmpty ? null : "用户名不能为空";
                  },
                ),
                TextFormField(
                  controller: _pwdController,
                  decoration: const InputDecoration(
                    labelText: "密码",
                    hintText: "您的登录密码",
                    icon: Icon(Icons.lock),
                  ),
                  obscureText: true,
                  //校验密码
                  validator: (v) {
                    return v!.trim().length > 5 ? null : "密码不能少于6位";
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: ElevatedButton(
                          child: const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text("登录"),
                          ),
                          onPressed: () {
                            // 通过_formKey.currentState 获取FormState后，
                            // 调用validate()方法校验用户名密码是否合法，校验
                            // 通过后再提交数据。
                            if ((_formKey.currentState as FormState).validate()) {
                              //验证通过提交数据
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ))
      ],
    );
  }
}
