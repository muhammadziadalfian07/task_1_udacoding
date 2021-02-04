part of 'pages.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: mainColor1,
          ),
          SafeArea(
            child: Container(
              color: mainColor1,
            ),
          ),
          ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50, bottom: 20),
                padding: EdgeInsets.symmetric(horizontal: defaultmargin),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Blogging",
                      style: whiteTextFont.copyWith(
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    InputWidget(
                      hintText: "Full Name",
                      labelText: "Full Name",
                      iconData: MdiIcons.account,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InputWidget(
                      hintText: "Email",
                      labelText: "Email",
                      iconData: MdiIcons.email,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InputWidget(
                      hintText: "Password",
                      labelText: "Password",
                      iconData: MdiIcons.lock,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InputWidget(
                      hintText: "Confirm Password",
                      labelText: "Confirm Password",
                      iconData: MdiIcons.lock,
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: defaultmargin),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => BlogPage()));
                  },
                  elevation: 0,
                  color: mainColor3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "SIgn Up",
                    style: whiteTextFont.copyWith(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
