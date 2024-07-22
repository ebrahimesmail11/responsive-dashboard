class TransctionModel{
  final String title;
  final String data;
  final String amount;
  final bool isWithdrawal;

  TransctionModel({required this.title,required this.data,required this.amount,required this.isWithdrawal});
}
List<TransctionModel> transctionList = [
  TransctionModel(title: "Uber", data: "12 Aprile 2022", amount: "10.00", isWithdrawal: true,),
];