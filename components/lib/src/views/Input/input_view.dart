import 'package:components/src/utils/util+iconToString.dart';
import 'package:flutter/material.dart';


class InputView extends StatefulWidget {
  const InputView({Key? key}) : super(key: key);

  @override
  _InputViewState createState() => _InputViewState();
}

class _InputViewState extends State<InputView> {

  String  _name  = "";
  String  _email = "";
  String  _fecha = "";
  String  _selectedOption = "Spain";

  //
  List<String> _coutries = ['Spain',
    'Portugal',
    'France',
    'Brazil',
    'Basque Country',
    'Ireland',
    'Germany'
  ];

  //Sort of delegate for InputFields
  TextEditingController _inputController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: ListView(
        children: [
          _makeNameInput(),
          Divider(),
          _makeEmailField(),
          Divider(),
          _makePasswordField(),
          Divider(),
          _makeDateField(context),
          Divider(),
          _makeDropDown(),
          Divider(),
          _makeNameTile(),
          Divider()
        ],
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      ),
    );
  }



  Widget _makeNameInput(){


      return TextField(
        autofocus: true,
        textCapitalization: TextCapitalization.words,
        decoration: InputDecoration(
          counter: Text('Nº chars: ${ _name.length }'),
          hintText: 'Enter your name',
          labelText: 'Name',
          helperText: 'Enter your full name',
          suffixIcon: getIcon('accessibility'),
          icon: getIcon("account"),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16)
          ),
        ),
        onChanged: (value) {
         setState(() {
           _name = value;
         });
        },
      );
  }

  Widget _makeEmailField(){
    return TextField(
      keyboardType: TextInputType.emailAddress  ,
      decoration: InputDecoration(
        hintText: 'Enter your email',
        labelText: 'Email',
        suffixIcon: getIcon('at'),
        icon: getIcon("email"),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16)
        ),
      ),
      onChanged: (value) {
        setState(() {
          _email = value;
        });
      },
    );
  }

  Widget _makePasswordField(){
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Enter your secret code',
        labelText: 'Password',
        suffixIcon: getIcon('lockOP'),
        icon: getIcon("lock"),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16)
        ),
      ),
      onChanged: (value) { },
    );
  }

  Widget _makeDateField(BuildContext context){

    return TextField(
        enableInteractiveSelection: false,
      controller: _inputController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16)
        ),
        hintText: 'Enter your birth date',
        labelText: 'Birth date',
        icon: getIcon("calendar"),
      ),
      onTap: (){
          FocusScope.of(context).requestFocus(new FocusNode());
          _makeCalendarView(context);
      } ,
    );

  }

   _makeCalendarView(BuildContext context) async{

    DateTime? picker = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2015),
        lastDate: new DateTime(2030),
        locale: Locale('es', 'ES')
    );

    if (picker != null){
        setState(() {
          this._fecha = picker.toString();
          this._inputController.text = this._fecha;
        });
    }

  }

  Widget _makeDropDown(){

    return DropdownButton<dynamic>(
      items: getDropDownOptions(),
      value: _selectedOption,
      onChanged: (itemOption){
        setState(() {
          this._selectedOption = itemOption.toString();
        });
      },
    );

  }

  Widget _makeNameTile(){
    return ListTile(
      title: Text('Your name is: $_name'),
      subtitle: Text('Your email is: $_email'),
      trailing: Text('Country $_selectedOption'),
    );
  }

  List<DropdownMenuItem> getDropDownOptions(){

     List<DropdownMenuItem<String>> dropDownList = [];
     
     _coutries.forEach((country) {
       dropDownList.add(
         DropdownMenuItem(
           child:  Text(country),
           value: country,
         )
       );

     });

     return dropDownList;

  }

}
