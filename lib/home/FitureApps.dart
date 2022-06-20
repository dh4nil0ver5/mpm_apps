import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mpm_apps/login/login_state.dart';
import 'package:http/http.dart' as http;
import '../login/login_cubit.dart';
import '../models/Album.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FitureApps extends StatefulWidget {
  const FitureApps({Key key}) : super(key: key);

  @override
  State<FitureApps> createState() => _FitureAppsState();
}

class _FitureAppsState extends State<FitureApps> {

  FToast fToast;

  @override
  void initState() {
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return
      Container(
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: ListView(
        children: <Widget>[
          GridView.count(
            crossAxisCount: 3,
            physics:
                NeverScrollableScrollPhysics(), // to disable GridView's scrolling
            shrinkWrap: true, // You won't see infinite size error
            children: <Widget>[
              Container(
                height: 24,
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.blue,
                    onSurface: Colors.red,
                  ),
                  onPressed: null,
                  child: Container(
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Center(
                            child: Container(
                              // height: 60,
                              child: Icon(Icons.fingerprint_sharp, size: 60),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Attendance",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              //test send assestment
              Container(
                height: 24,
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.blue,
                    onSurface: Colors.red,
                  ),
                  onPressed: () async {

                    final snackBar = SnackBar(
                      content: const Text('Error !'),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {
                          // Some code to undo the change.
                        },
                      ),
                    );

                    ScaffoldMessenger.of(context).showSnackBar(snackBar);

                    final response = await http
                        .post(Uri.parse('https://www.getpostman.com/collections/eb05046d48a47767891d'+
                        '/api/user/achievement'),
                      headers: <String, String>{
                        'Content-Type': 'application/json; charset=UTF-8',
                      },
                      body: jsonEncode(<String, String>{
                        'token': "BLUADlWbOVj78VFX",
                        'device': "test_device",
                      })
                    );
                    if (response.statusCode == 200) {
                          print(response.body);
                    } else {


                      final snackBar = SnackBar(
                        content: const Text('Error !'),
                        action: SnackBarAction(
                          label: 'Undo',
                          onPressed: () {
                            // Some code to undo the change.
                          },
                        ),
                      );

                      ScaffoldMessenger.of(context).showSnackBar(snackBar);

                        throw Exception('Api not result');
                      }
                    },
                  // context.read<LoginCubit>().emit(state.)
                  child: Container(
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Center(
                            child: Container(
                              // height: 60,
                              child: Icon(Icons.assessment_sharp, size: 60),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Selft",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Assestment",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              //
              Container(
                height: 24,
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.blue,
                    onSurface: Colors.red,
                  ),
                  onPressed: null,
                  child: Container(
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Center(
                            child: Container(
                              // height: 60,
                              child: Icon(Icons.list_alt_sharp, size: 60),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Subordinate",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Employee List",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              //
              Container(
                height: 24,
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.blue,
                    onSurface: Colors.red,
                  ),
                  onPressed: null,
                  child: Container(
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Center(
                            child: Container(
                              // height: 60,
                              child: Icon(Icons.list_alt_sharp, size: 60),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Employee",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Service List",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              //
              Container(
                height: 24,
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.blue,
                    onSurface: Colors.red,
                  ),
                  onPressed: null,
                  child: Container(
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Center(
                            child: Container(
                              // height: 60,
                              child: Icon(Icons.list_alt_sharp, size: 60),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Booking",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              //
              Container(
                height: 24,
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.blue,
                    onSurface: Colors.red,
                  ),
                  onPressed: null,
                  child: Container(
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Center(
                            child: Container(
                              // height: 60,
                              child: Icon(Icons.list_alt_sharp, size: 60),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Approval",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              //
              Container(
                height: 24,
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.blue,
                    onSurface: Colors.red,
                  ),
                  onPressed: null,
                  child: Container(
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Center(
                            child: Container(
                              // height: 60,
                              child: Icon(Icons.list_alt_sharp, size: 60),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Approval",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Status",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              //
              Container(
                height: 24,
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.blue,
                    onSurface: Colors.red,
                  ),
                  onPressed: null,
                  child: Container(
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Center(
                            child: Container(
                              // height: 60,
                              child: Icon(Icons.list_alt_sharp, size: 60),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Klaim",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              //
              Container(
                height: 24,
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.blue,
                    onSurface: Colors.red,
                  ),
                  onPressed: null,
                  child: Container(
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Center(
                            child: Container(
                              // height: 60,
                              child: Icon(Icons.list_alt_sharp, size: 60),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Attendance",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Report",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              //
              Container(
                height: 24,
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.blue,
                    onSurface: Colors.red,
                  ),
                  onPressed: null,
                  child: Container(
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Center(
                            child: Container(
                              // height: 60,
                              child: Icon(Icons.list_alt_sharp, size: 60),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Document",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Request",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              //
              Container(
                height: 24,
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.blue,
                    onSurface: Colors.red,
                  ),
                  onPressed: null,
                  child: Container(
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Center(
                            child: Container(
                              // height: 60,
                              child: Icon(Icons.list_alt_sharp, size: 60),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Feedback",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              //
              Container(
                height: 24,
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.blue,
                    onSurface: Colors.red,
                  ),
                  onPressed: null,
                  child: Container(
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Center(
                            child: Container(
                              // height: 60,
                              child: Icon(Icons.list_alt_sharp, size: 60),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Employee",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Handbook",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              //
              Container(
                height: 24,
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.blue,
                    onSurface: Colors.red,
                  ),
                  onPressed: null,
                  child: Container(
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Center(
                            child: Container(
                              // height: 60,
                              child: Icon(Icons.list_alt_sharp, size: 60),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Directory",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              //
            ],
          ),
        ],
      ),
    );
  }
}
