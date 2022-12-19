/* Write  a  dart  codeto  find  friends’details  by  their  name  using  a  dictionary.  */

import 'dart:io';

void main(List<String> args) {
	FriendDictionary()..addFriend()..getByName(name: "abc",callBack: (i)
	{
		print(i);
	});
}


/* Constants */

const NAME="Name";
const AGE="Age";
const ADDRESS="Address";
const PHONE_NUMBER="Phone_Number";
// 

class FriendDictionary {
	List<Map<String,Object>> _list=[];

	Map<String,Object> _getDetails()
	{
		Map<String,Object> _map=Map();
		stdout.write("Enter Name : ");
		_map[NAME]=stdin.readLineSync()!;
		stdout.write("Enter Phone Number : ");
		_map[PHONE_NUMBER]=stdin.readLineSync()!;
		stdout.write("Enter Age : ");
		_map[AGE]=stdin.readLineSync()!;
		stdout.write("Enter Address : ");
		_map[ADDRESS]=stdin.readLineSync()!;
		return _map;
	}
	void addFriend()
	{
		_list.add(_getDetails());
	}

	void getByName({required String name,Function? callBack})
	{
		for (var friend in _list) {
		  if (friend[NAME].toString().toUpperCase()==name.toUpperCase()) {
		    callBack!(friend);
			return;
		  }
		}
	}
}
