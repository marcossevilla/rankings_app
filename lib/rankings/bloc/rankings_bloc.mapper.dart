// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'rankings_bloc.dart';

class RankingsStateMapper extends ClassMapperBase<RankingsState> {
  RankingsStateMapper._();

  static RankingsStateMapper? _instance;
  static RankingsStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RankingsStateMapper._());
      RankingRequestMapper.ensureInitialized();
      RankingMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RankingsState';

  static RankingsStatus _$status(RankingsState v) => v.status;
  static const Field<RankingsState, RankingsStatus> _f$status = Field(
    'status',
    _$status,
    opt: true,
    def: RankingsStatus.initial,
  );
  static RankingRequest _$request(RankingsState v) => v.request;
  static const Field<RankingsState, RankingRequest> _f$request = Field(
    'request',
    _$request,
    opt: true,
    def: const RankingRequest(category: ''),
  );
  static List<Ranking> _$rankings(RankingsState v) => v.rankings;
  static const Field<RankingsState, List<Ranking>> _f$rankings = Field(
    'rankings',
    _$rankings,
    opt: true,
    def: const [],
  );

  @override
  final MappableFields<RankingsState> fields = const {
    #status: _f$status,
    #request: _f$request,
    #rankings: _f$rankings,
  };

  static RankingsState _instantiate(DecodingData data) {
    return RankingsState(
      status: data.dec(_f$status),
      request: data.dec(_f$request),
      rankings: data.dec(_f$rankings),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RankingsState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RankingsState>(map);
  }

  static RankingsState fromJson(String json) {
    return ensureInitialized().decodeJson<RankingsState>(json);
  }
}

mixin RankingsStateMappable {
  String toJson() {
    return RankingsStateMapper.ensureInitialized().encodeJson<RankingsState>(
      this as RankingsState,
    );
  }

  Map<String, dynamic> toMap() {
    return RankingsStateMapper.ensureInitialized().encodeMap<RankingsState>(
      this as RankingsState,
    );
  }

  RankingsStateCopyWith<RankingsState, RankingsState, RankingsState>
  get copyWith => _RankingsStateCopyWithImpl<RankingsState, RankingsState>(
    this as RankingsState,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return RankingsStateMapper.ensureInitialized().stringifyValue(
      this as RankingsState,
    );
  }

  @override
  bool operator ==(Object other) {
    return RankingsStateMapper.ensureInitialized().equalsValue(
      this as RankingsState,
      other,
    );
  }

  @override
  int get hashCode {
    return RankingsStateMapper.ensureInitialized().hashValue(
      this as RankingsState,
    );
  }
}

extension RankingsStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RankingsState, $Out> {
  RankingsStateCopyWith<$R, RankingsState, $Out> get $asRankingsState =>
      $base.as((v, t, t2) => _RankingsStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RankingsStateCopyWith<$R, $In extends RankingsState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  RankingRequestCopyWith<$R, RankingRequest, RankingRequest> get request;
  ListCopyWith<$R, Ranking, RankingCopyWith<$R, Ranking, Ranking>> get rankings;
  $R call({
    RankingsStatus? status,
    RankingRequest? request,
    List<Ranking>? rankings,
  });
  RankingsStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RankingsStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RankingsState, $Out>
    implements RankingsStateCopyWith<$R, RankingsState, $Out> {
  _RankingsStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RankingsState> $mapper =
      RankingsStateMapper.ensureInitialized();
  @override
  RankingRequestCopyWith<$R, RankingRequest, RankingRequest> get request =>
      $value.request.copyWith.$chain((v) => call(request: v));
  @override
  ListCopyWith<$R, Ranking, RankingCopyWith<$R, Ranking, Ranking>>
  get rankings => ListCopyWith(
    $value.rankings,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(rankings: v),
  );
  @override
  $R call({
    RankingsStatus? status,
    RankingRequest? request,
    List<Ranking>? rankings,
  }) => $apply(
    FieldCopyWithData({
      if (status != null) #status: status,
      if (request != null) #request: request,
      if (rankings != null) #rankings: rankings,
    }),
  );
  @override
  RankingsState $make(CopyWithData data) => RankingsState(
    status: data.get(#status, or: $value.status),
    request: data.get(#request, or: $value.request),
    rankings: data.get(#rankings, or: $value.rankings),
  );

  @override
  RankingsStateCopyWith<$R2, RankingsState, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RankingsStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

