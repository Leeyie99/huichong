
class Profit_data {
  Profit_data({
    required this.name,
    required this.return_on_equity,
    required this.profit,

    required this.origin,
    required this.raise,
    required this.highest,

    required this.sales_territory,
    required this.income_type,
    required this.deadline,
    required this.raise_collect,
    required this.invest_mode,
    required this.price_indication,
    required this.risk,
    required this.currency,
    required this.product_code,
    required this.issuer,
  });

  final String name;
  final String return_on_equity;
  final double profit;

  final String origin;
  final String raise;
  final String highest;

  final String sales_territory;
  final String income_type;
  final String deadline;
  final String raise_collect;
  final String invest_mode;
  final String price_indication;
  final String risk;
  final String currency;
  final String product_code;
  final String issuer;

  bool selected = false;
}

final List<Profit_data> profit_datas = [
  Profit_data(
    name:'安固固收开放式产品',
    return_on_equity:'2.05%',
    profit: 52.01,


    origin:'100.00元',
    raise:'1.00元',
    highest:'100,000,000.00元',

    sales_territory:'全国',
    income_type:'非保本浮动收益',
    deadline:'最低持有1天',
    raise_collect:'公募',
    invest_mode:'固定收益',
    price_indication:'1.00元',
    risk:'R2风险',
    currency:'人民币',
    product_code:'210320010101',
    issuer:'三湘银行',
  ),

  Profit_data(
    name:'安固一季固收产品第三期',
    return_on_equity:'3.25%',
    profit: 107.01,

    origin:'100.00元',
    raise:'1.00元',
    highest:'100,000,000.00元',

    sales_territory:'全国',
    income_type:'非保本浮动收益',
    deadline:'最低持有30天',
    raise_collect:'公募',
    invest_mode:'固定收益',
    price_indication:'1.00元',
    risk:'R2风险',
    currency:'人民币',
    product_code:'210320010403',
    issuer:'三湘银行',
  ),

  Profit_data(
    name:'安固两季固收产品第一期',
    return_on_equity:'3.55%',
    profit: 82.75,

    origin:'100.00元',
    raise:'1.00元',
    highest:'100,000,000.00元',

    sales_territory:'全国',
    income_type:'非保本浮动收益',
    deadline:'最低持有60天',
    raise_collect:'公募',
    invest_mode:'固定收益',
    price_indication:'1.00元',
    risk:'R2风险',
    currency:'人民币',
    product_code:'210320010501',
    issuer:'三湘银行',
  ),

];