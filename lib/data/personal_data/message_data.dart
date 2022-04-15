
class Message_data {
  Message_data({
    required this.id,
    required this.date,
    required this.label,
    required this.text,


  });

  final int id;
  final DateTime date;
  final String label;
  final String text;


  bool selected = false;
}

final List<Message_data> message_datas = [
  Message_data(
    id: 2022040101,
    date: DateTime(2019, 1, 10, 9, 30),
    label: '关于系统升级的公告',
    text:'',
  ),

  Message_data(
    id: 2022040101,
    date: DateTime(2022, 4, 15, 9, 30),
    label: '恭喜您成功购买了产品安固一季固收产品第三期，共购入壹仟圆（1,000）人民币',
    text:'恭喜您成功购买了产品安固一季固收产品第三期，共购入壹仟圆（1,000）人民币',
  ),

  Message_data(
      id: 2022040101,
      date: DateTime(2019, 1, 10, 9, 30),
      label: '中国人民银行支付清算系统维护公告',
      text:'',
  ),

  Message_data(
    id: 2022040101,
    date: DateTime(2019, 1, 10, 9, 30),
    label: '湖南三湘银行营业网点2022年春节放假安排',
    text:'',
  ),

  Message_data(
    id: 2022040101,
    date: DateTime(2019, 1, 10, 9, 30),
    label: '关于系统维护升级的公告',
    text:'',
  ),

  Message_data(
    id: 2022040101,
    date: DateTime(2019, 1, 10, 9, 30),
    label: '关于变更我行客户热线号码的通知',
    text:'',
  ),

];