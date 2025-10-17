// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'ranking_request.dart';

class RankingRequestMapper extends ClassMapperBase<RankingRequest> {
  RankingRequestMapper._();

  static RankingRequestMapper? _instance;
  static RankingRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RankingRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RankingRequest';

  static String _$category(RankingRequest v) => v.category;
  static const Field<RankingRequest, String> _f$category = Field(
    'category',
    _$category,
  );
  static int _$maxAmount(RankingRequest v) => v.maxAmount;
  static const Field<RankingRequest, int> _f$maxAmount = Field(
    'maxAmount',
    _$maxAmount,
    opt: true,
    def: 10,
  );

  @override
  final MappableFields<RankingRequest> fields = const {
    #category: _f$category,
    #maxAmount: _f$maxAmount,
  };

  static RankingRequest _instantiate(DecodingData data) {
    return RankingRequest(
      category: data.dec(_f$category),
      maxAmount: data.dec(_f$maxAmount),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RankingRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RankingRequest>(map);
  }

  static RankingRequest fromJson(String json) {
    return ensureInitialized().decodeJson<RankingRequest>(json);
  }
}

mixin RankingRequestMappable {
  String toJson() {
    return RankingRequestMapper.ensureInitialized().encodeJson<RankingRequest>(
      this as RankingRequest,
    );
  }

  Map<String, dynamic> toMap() {
    return RankingRequestMapper.ensureInitialized().encodeMap<RankingRequest>(
      this as RankingRequest,
    );
  }

  RankingRequestCopyWith<RankingRequest, RankingRequest, RankingRequest>
  get copyWith => _RankingRequestCopyWithImpl<RankingRequest, RankingRequest>(
    this as RankingRequest,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return RankingRequestMapper.ensureInitialized().stringifyValue(
      this as RankingRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return RankingRequestMapper.ensureInitialized().equalsValue(
      this as RankingRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return RankingRequestMapper.ensureInitialized().hashValue(
      this as RankingRequest,
    );
  }
}

extension RankingRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RankingRequest, $Out> {
  RankingRequestCopyWith<$R, RankingRequest, $Out> get $asRankingRequest =>
      $base.as((v, t, t2) => _RankingRequestCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RankingRequestCopyWith<$R, $In extends RankingRequest, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? category, int? maxAmount});
  RankingRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _RankingRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RankingRequest, $Out>
    implements RankingRequestCopyWith<$R, RankingRequest, $Out> {
  _RankingRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RankingRequest> $mapper =
      RankingRequestMapper.ensureInitialized();
  @override
  $R call({String? category, int? maxAmount}) => $apply(
    FieldCopyWithData({
      if (category != null) #category: category,
      if (maxAmount != null) #maxAmount: maxAmount,
    }),
  );
  @override
  RankingRequest $make(CopyWithData data) => RankingRequest(
    category: data.get(#category, or: $value.category),
    maxAmount: data.get(#maxAmount, or: $value.maxAmount),
  );

  @override
  RankingRequestCopyWith<$R2, RankingRequest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RankingRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

