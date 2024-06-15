class User {
  String? casualLeaves;
  String? sickLeaves;
  String? annualLeaves;
  String? userId;
  String? userName;
  String? email;
  String? loginStatus;
  String? loginMsg;
  String? AdvFinApp;
  String? brcode;
  String? member_designation;
  String? role;

  User(
      {this.casualLeaves,
      this.sickLeaves,
      this.annualLeaves,
      this.userId,
      this.userName,
      this.email,
      this.loginStatus,
      this.loginMsg,
      this.AdvFinApp,
         this.brcode,
        this.member_designation,
         this.role
      });

  User.fromJson(Map<String, dynamic> json) {
    casualLeaves = json['casual_leaves'];
    sickLeaves = json['sick_leaves'];
    annualLeaves = json['annual_leaves'];
    userId = json['userId'];
    userName = json['userName'];
    email = json['email'];
    loginStatus = json['LoginStatus'];
    loginMsg = json['LoginMsg'];
    AdvFinApp=json['AdvFinApp'];
    brcode=json['brcode'];
    member_designation=json['member_designation'];
    role=json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['casual_leaves'] = this.casualLeaves;
    data['sick_leaves'] = this.sickLeaves;
    data['annual_leaves'] = this.annualLeaves;
    data['userId'] = this.userId;
    data['userName'] = this.userName;
    data['email'] = this.email;
    data['LoginStatus'] = this.loginStatus;
    data['LoginMsg'] = this.loginMsg;
    data['AdvFinApp']=this.AdvFinApp;
    data['brcode']=this.brcode;
    data['member_designation']=this.member_designation;
    data['role']=this.role;
    return data;
  }
}
