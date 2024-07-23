class TransctionModel{
  final String title;
  final String data;
  final String amount;
  final bool isWithdrawal;

  TransctionModel({required this.title,required this.data,required this.amount,required this.isWithdrawal});
}
List<TransctionModel> transctionList = [
  TransctionModel(title: "Cash Withdrawal", data: "13 Apr, 2022", amount: r"$20.129", isWithdrawal: true,),
  TransctionModel(title: "Landing Page project", data: "13 Apr, 2022", amount: r"$20.129", isWithdrawal: false,),
  TransctionModel(title: "Juni Mobile App project", data: "13 Apr, 2022", amount: r"$20.129", isWithdrawal: false,),
];