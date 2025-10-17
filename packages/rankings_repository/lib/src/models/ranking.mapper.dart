// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'ranking.dart';

class RankingMapper extends ClassMapperBase<Ranking> {
  RankingMapper._();

  static RankingMapper? _instance;
  static RankingMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RankingMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Ranking';

  static int _$rank(Ranking v) => v.rank;
  static const Field<Ranking, int> _f$rank = Field('rank', _$rank);
  static String _$name(Ranking v) => v.name;
  static const Field<Ranking, String> _f$name = Field('name', _$name);
  static String _$description(Ranking v) => v.description;
  static const Field<Ranking, String> _f$description = Field(
    'description',
    _$description,
  );

  @override
  final MappableFields<Ranking> fields = const {
    #rank: _f$rank,
    #name: _f$name,
    #description: _f$description,
  };

  static Ranking _instantiate(DecodingData data) {
    return Ranking(
      rank: data.dec(_f$rank),
      name: data.dec(_f$name),
      description: data.dec(_f$description),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Ranking fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Ranking>(map);
  }

  static Ranking fromJson(String json) {
    return ensureInitialized().decodeJson<Ranking>(json);
  }
}

mixin RankingMappable {
  String toJson() {
    return RankingMapper.ensureInitialized().encodeJson<Ranking>(
      this as Ranking,
    );
  }

  Map<String, dynamic> toMap() {
    return RankingMapper.ensureInitialized().encodeMap<Ranking>(
      this as Ranking,
    );
  }

  RankingCopyWith<Ranking, Ranking, Ranking> get copyWith =>
      _RankingCopyWithImpl<Ranking, Ranking>(
        this as Ranking,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RankingMapper.ensureInitialized().stringifyValue(this as Ranking);
  }

  @override
  bool operator ==(Object other) {
    return RankingMapper.ensureInitialized().equalsValue(
      this as Ranking,
      other,
    );
  }

  @override
  int get hashCode {
    return RankingMapper.ensureInitialized().hashValue(this as Ranking);
  }
}

extension RankingValueCopy<$R, $Out> on ObjectCopyWith<$R, Ranking, $Out> {
  RankingCopyWith<$R, Ranking, $Out> get $asRanking =>
      $base.as((v, t, t2) => _RankingCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RankingCopyWith<$R, $In extends Ranking, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? rank, String? name, String? description});
  RankingCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RankingCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Ranking, $Out>
    implements RankingCopyWith<$R, Ranking, $Out> {
  _RankingCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Ranking> $mapper =
      RankingMapper.ensureInitialized();
  @override
  $R call({int? rank, String? name, String? description}) => $apply(
    FieldCopyWithData({
      if (rank != null) #rank: rank,
      if (name != null) #name: name,
      if (description != null) #description: description,
    }),
  );
  @override
  Ranking $make(CopyWithData data) => Ranking(
    rank: data.get(#rank, or: $value.rank),
    name: data.get(#name, or: $value.name),
    description: data.get(#description, or: $value.description),
  );

  @override
  RankingCopyWith<$R2, Ranking, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _RankingCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

