import 'package:flutter/material.dart';
import 'package:flutter_pickers/pickers.dart';
import 'package:flutter_pickers/time_picker/model/date_mode.dart';
import 'package:flutter_pickers/time_picker/model/suffix.dart';

class PickerSample extends StatefulWidget {
  @override
  _PickerSample createState() => _PickerSample();
}

class _PickerSample extends State<PickerSample> {
  TextEditingController _dateController = TextEditingController();
  var _chooseDate;
  var _chooseTime;

  _showDatePicker() async {
    var date = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1970),
        lastDate: DateTime(2050));
    setState(() {
      this._chooseDate = date.toString().split(" ")[0];
    });
  }

  @override
  Widget build(BuildContext context) {
    String initData = '男';

    return ListView(
      children: [
        ListTile(
          title: const Text('性别'),
          leading: const Icon(Icons.person),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                initData,
                style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
                overflow: TextOverflow.ellipsis,
                maxLines: 1000,
              ),
              const SizedBox(width: 20,),
              const Icon(Icons.keyboard_arrow_right)
            ],
          ),
          onTap: () => {
            Pickers.showSinglePicker(context,
                data: ['男', '女'], selectData: initData)
          },
        ),
        ListTile(
          title: Text('年月日'),
          leading: const Icon(Icons.date_range_outlined),
          onTap: () => {
            Pickers.showDatePicker(context, mode: DateMode.YMD, suffix: Suffix.normal(),)
          },
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(width: 20,),
              const Icon(Icons.keyboard_arrow_right)
            ],
          ),
        )
      ],
    );
  }
}
