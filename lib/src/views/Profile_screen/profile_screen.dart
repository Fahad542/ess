import 'package:ess/src/services/remote/api_service.dart';
import 'package:ess/src/styles/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../configs/app_setup.locator.dart';
import '../../models/api_response_models/user.dart';
import '../../services/local/auth_service.dart';
import '../../shared/top_app_bar.dart';

class profile_screen extends StatefulWidget {
  const profile_screen({Key? key}) : super(key: key);

  @override
  State<profile_screen> createState() => _profile_screenState();
}

class _profile_screenState extends State<profile_screen> {
  @override
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
   AuthService? authService ;
  TextEditingController _controller = TextEditingController();
  AuthService _authService = locator<AuthService>();
  User? get 
  currentUser => _authService.user;
  Widget build(BuildContext context) {
    return


          SafeArea(
            child: Column(
              children: [
                GeneralAppBar(
                    title: "Profile Screen",

                    onMenuTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    onNotificationTap: () {}),

                SizedBox(height: 30,),
                Expanded(
                  flex: 3,
                  child: Container(

                    child: (
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                  'assets/images/profile.png'),
                              radius: 80, // specify the radius as needed
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${currentUser?.userName.toString()}", style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight
                                    .bold),),
                                Text("(${currentUser?.userId.toString()})")
                              ],
                            ),

                            Text("${currentUser?.member_designation.toString()}",
                              style: TextStyle(fontSize: 14),),

                            SizedBox(height: 25,),
                            InkWell(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text('Change Password'),
                                      content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Text(
                                              'Do you want to change your password?'),
                                          TextField(
                                            controller: _controller,
                                            decoration: InputDecoration(
                                              hintText: 'Enter your new password',
                                            ),
                                          ),
                                        ],
                                      ),
                                      actions: <Widget>[
                                        TextButton(
                                          child: Text('Cancel'),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                        TextButton(
                                          child: Text('Save Password'),
                                          onPressed: () {
                                            ApiService api = ApiService();
                                            api.changepassword(context, _controller.text.toString());
                                            // Add your code to change the password here
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: AppColors.primary,
                                    borderRadius: BorderRadius.circular(14),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                          Icons.edit, color: Colors.white
                                      ),
                                      // Icon widget added here
                                      SizedBox(width: 8),
                                      // Adding some space between icon and text
                                      Text("Change Password", style: TextStyle(
                                          color: Colors.white)),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],
                        )

                    ),
                  ),
                ),
                Container()
              ],
            ),


          ); }
}
