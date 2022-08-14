import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homePage(),
    );
  }
}

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                    ),
                      child: Image.asset(
                        'images/mgn-logo.png',
                        height: 150.0,
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    const Text(
                      "MNREGA",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Choose Your Role",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),

                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                        Container(
                          child: RaisedButton(
                            color: Colors.blueAccent,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MES_Login()));
                            },
                            child: Text(
                                "MES Officer",
                                 style: TextStyle(
                                 fontSize: 20.0,
                                   color: Colors.white,
                                 fontWeight: FontWeight.bold,),
                          ),
                        ),
                        ),
                        const SizedBox(
                          width: 50.0,
                        ),
                        Container(
                            child: RaisedButton(
                              color: Colors.blueAccent,
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Employee_Login()));
                              },
                              child: Text(
                                  "Employee",
                                  style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,),),
                            )
                        )
                      ]
                    )
                  ]
              )
          )
      ),
    );
  }
}


class MES_Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.asset(
                  'images/mgn-logo.png',
                  height: 150.0,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Text(
                "MNREGA",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                "MES Login",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                child: Container(
                  height: 60.0,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 5.0, 0.0, 0.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Applicant ID',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                child: Container(
                  height: 60.0,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 5.0, 0.0, 0.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Container(
                child: RaisedButton(
                  color: Colors.blueAccent,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Work_Book()));
                  },
                  child: Text("Submit"),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}


class Employee_Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(
                    'images/mgn-logo.png',
                    height: 150.0,
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Text(
                  "MNREGA",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  "Employee Login",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25.0,
                  ),
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(25.0, 5.0, 0.0, 0.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Applicant ID',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25.0,
                  ),
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(25.0, 5.0, 0.0, 0.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Container(
                  child: RaisedButton(
                    color: Colors.blueAccent,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Page2()));
                    },
                    child: Text("Submit"),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}


class Work_Book extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mgnerga"),
      ),
      body: SafeArea(
        child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget> [
                    Container(
                      child: Text(
                          'MSR No. xxxxxxx',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 60.0,
                    ),
                    Container(
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage('images/profile.jpg'),
                      )
                    )
                    ]
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                        Container(
                          child: RaisedButton(
                            color: Colors.blueAccent,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MES_Login()));
                            },
                            child: Text(
                              "MES Officer",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 50.0,
                        ),
                        Container(
                            child: RaisedButton(
                              color: Colors.blueAccent,
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Employee_Login()));
                              },
                              child: Text(
                                "Employee",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,),
                              ),
                            )
                        )
                      ]
                  )
                ]
            ),
        ),
        // child: RaisedButton(
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        //   child: Text("move to page 1"),
      ),
    );
  }
}
// class Page1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("Page 1"),
//       ),
//       body: Center(
//         child: RaisedButton(
//           onPressed: () {
//             Navigator.push(context, MaterialPageRoute(builder: (context) => Page2()));
//           },
//           child: Text("move to page 2"),
//           ),
//         ),
//     );
//   }
// }
//
//
//
class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Page 2"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("move to page 1"),
        ),
      ),
    );
  }
}
