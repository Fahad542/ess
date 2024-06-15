class Dashboard {
  String? newsTitle;
  String? newsDetail;
  String? memberCode;
  String? username;
  String? email;
  String? casualLeaves;
  String? sickLeaves;
  String? annualLeaves;
  dynamic totalLates;
  dynamic totalOntime;
  String? loginStatus;
  String? loginMsg;

  Dashboard(
      {this.newsTitle,
      this.newsDetail,
      this.memberCode,
      this.username,
      this.email,
      this.casualLeaves,
      this.sickLeaves,
      this.annualLeaves,
      this.totalLates,
      this.totalOntime,
      this.loginStatus,
      this.loginMsg});

  Dashboard.fromJson(Map<String, dynamic> json) {
    newsTitle = json['news_title'];
    newsDetail = json['news_detail'];
    memberCode = json['member_code'];
    username = json['username'];
    email = json['email'];
    casualLeaves = json['casual_leaves'];
    sickLeaves = json['sick_leaves'];
    annualLeaves = json['annual_leaves'];
    totalLates = json['total_lates'];
    totalOntime = json['total_ontime'];
    loginStatus = json['LoginStatus'];
    loginMsg = json['LoginMsg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['news_title'] = this.newsTitle;
    data['news_detail'] = this.newsDetail;
    data['member_code'] = this.memberCode;
    data['username'] = this.username;
    data['email'] = this.email;
    data['casual_leaves'] = this.casualLeaves;
    data['sick_leaves'] = this.sickLeaves;
    data['annual_leaves'] = this.annualLeaves;
    data['total_lates'] = this.totalLates;
    data['total_ontime'] = this.totalOntime;
    data['LoginStatus'] = this.loginStatus;
    data['LoginMsg'] = this.loginMsg;
    return data;
  }
}
