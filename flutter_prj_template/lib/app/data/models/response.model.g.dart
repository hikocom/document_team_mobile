// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginationParam _$PaginationParamFromJson(Map<String, dynamic> json) =>
    PaginationParam(
      pageNumber: json['pageNumber'] as int? ?? 1,
      pageSize: json['pageSize'] as int? ?? 10,
    );

Map<String, dynamic> _$PaginationParamToJson(PaginationParam instance) =>
    <String, dynamic>{
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
    };

PaginationResult _$PaginationResultFromJson(Map<String, dynamic> json) =>
    PaginationResult(
      objects: json['objects'] as List<dynamic>,
      totalCount: json['totalCount'] as int,
    );

Map<String, dynamic> _$PaginationResultToJson(PaginationResult instance) =>
    <String, dynamic>{
      'objects': instance.objects,
      'totalCount': instance.totalCount,
    };

LoadParamModel _$LoadParamModelFromJson(Map<String, dynamic> json) =>
    LoadParamModel(
      customParams: json['customParams'],
      loadOptions: DataSourceLoadOptions.fromJson(
          json['loadOptions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoadParamModelToJson(LoadParamModel instance) =>
    <String, dynamic>{
      'loadOptions': instance.loadOptions,
      'customParams': instance.customParams,
    };

DataSourceLoadOptions _$DataSourceLoadOptionsFromJson(
        Map<String, dynamic> json) =>
    DataSourceLoadOptions(
      searchExpr: json['searchExpr'] as String,
      searchOperation: json['searchOperation'] as String,
      searchValue: json['searchValue'] as String,
      skip: json['skip'] as int? ?? 0,
      take: json['take'] as int? ?? 10,
    );

Map<String, dynamic> _$DataSourceLoadOptionsToJson(
        DataSourceLoadOptions instance) =>
    <String, dynamic>{
      'searchExpr': instance.searchExpr,
      'searchOperation': instance.searchOperation,
      'searchValue': instance.searchValue,
      'skip': instance.skip,
      'take': instance.take,
    };

DataResultModel _$DataResultModelFromJson(Map<String, dynamic> json) =>
    DataResultModel(
      data: json['data'],
      totalCount: json['totalCount'] as int,
    );

Map<String, dynamic> _$DataResultModelToJson(DataResultModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'totalCount': instance.totalCount,
    };

BaseModel _$BaseModelFromJson(Map<String, dynamic> json) => BaseModel(
      key: json['key'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$BaseModelToJson(BaseModel instance) => <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };
