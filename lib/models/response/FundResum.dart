
class FundResum {

  final String? fundname;
  final double mount;


 const FundResum(this.fundname, this.mount);

 factory FundResum.fromJson(Map<String, dynamic> json) =>
      FundResum(
        json['fundname'] as String?,
        double.parse(json['mount']),
      );

  @override
  Map<String, dynamic> toJson()  => _$FundResumToJson(this);

  Map<String, dynamic> _$FundResumToJson(FundResum instance) => <String, dynamic>{
    'foundname': instance.fundname,
    'mount': instance.mount,
  };


}