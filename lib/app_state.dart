import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _AuthenticationPersist =
          await secureStorage.getString('ff_AuthenticationPersist') ??
              _AuthenticationPersist;
    });
    await _safeInitAsync(() async {
      _AutoplayNarration =
          await secureStorage.getBool('ff_AutoplayNarration') ??
              _AutoplayNarration;
    });
    await _safeInitAsync(() async {
      _PrivacyPolicy =
          await secureStorage.getBool('ff_PrivacyPolicy') ?? _PrivacyPolicy;
    });
    await _safeInitAsync(() async {
      _PrivacyPolicyTimestamp =
          await secureStorage.read(key: 'ff_PrivacyPolicyTimestamp') != null
              ? DateTime.fromMillisecondsSinceEpoch(
                  (await secureStorage.getInt('ff_PrivacyPolicyTimestamp'))!)
              : _PrivacyPolicyTimestamp;
    });
    await _safeInitAsync(() async {
      _currentURL =
          await secureStorage.getString('ff_currentURL') ?? _currentURL;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _AuthenticationPersist = '';
  String get AuthenticationPersist => _AuthenticationPersist;
  set AuthenticationPersist(String value) {
    _AuthenticationPersist = value;
    secureStorage.setString('ff_AuthenticationPersist', value);
  }

  void deleteAuthenticationPersist() {
    secureStorage.delete(key: 'ff_AuthenticationPersist');
  }

  bool _searchisactive = false;
  bool get searchisactive => _searchisactive;
  set searchisactive(bool value) {
    _searchisactive = value;
  }

  bool _AutoplayNarration = true;
  bool get AutoplayNarration => _AutoplayNarration;
  set AutoplayNarration(bool value) {
    _AutoplayNarration = value;
    secureStorage.setBool('ff_AutoplayNarration', value);
  }

  void deleteAutoplayNarration() {
    secureStorage.delete(key: 'ff_AutoplayNarration');
  }

  bool _PrivacyPolicy = false;
  bool get PrivacyPolicy => _PrivacyPolicy;
  set PrivacyPolicy(bool value) {
    _PrivacyPolicy = value;
    secureStorage.setBool('ff_PrivacyPolicy', value);
  }

  void deletePrivacyPolicy() {
    secureStorage.delete(key: 'ff_PrivacyPolicy');
  }

  DateTime? _PrivacyPolicyTimestamp;
  DateTime? get PrivacyPolicyTimestamp => _PrivacyPolicyTimestamp;
  set PrivacyPolicyTimestamp(DateTime? value) {
    _PrivacyPolicyTimestamp = value;
    value != null
        ? secureStorage.setInt(
            'ff_PrivacyPolicyTimestamp', value.millisecondsSinceEpoch)
        : secureStorage.remove('ff_PrivacyPolicyTimestamp');
  }

  void deletePrivacyPolicyTimestamp() {
    secureStorage.delete(key: 'ff_PrivacyPolicyTimestamp');
  }

  String _currentURL =
      'https://firebasestorage.googleapis.com/v0/b/learning-od677g.appspot.com/o/cms_uploads%2FChapter_01%2F1718749326878000%2Fb01_AdvAudio1_Part1.mp3?alt=media&token=a5bec703-848a-46d1-bf3a-af6c97431ba8';
  String get currentURL => _currentURL;
  set currentURL(String value) {
    _currentURL = value;
    secureStorage.setString('ff_currentURL', value);
  }

  void deleteCurrentURL() {
    secureStorage.delete(key: 'ff_currentURL');
  }

  List<String> _musiclist = [
    'https://firebasestorage.googleapis.com/v0/b/learning-od677g.appspot.com/o/cms_uploads%2FChapter_01%2F1718749326878000%2Fb01_AdvAudio1_Part1.mp3?alt=media&token=a5bec703-848a-46d1-bf3a-af6c97431ba8',
    'https://firebasestorage.googleapis.com/v0/b/learning-od677g.appspot.com/o/cms_uploads%2FChapter_01%2F1718749326878000%2Fb01_AdvAudio1_Part1.mp3?alt=media&token=a5bec703-848a-46d1-bf3a-af6c97431ba8'
  ];
  List<String> get musiclist => _musiclist;
  set musiclist(List<String> value) {
    _musiclist = value;
  }

  void addToMusiclist(String value) {
    musiclist.add(value);
  }

  void removeFromMusiclist(String value) {
    musiclist.remove(value);
  }

  void removeAtIndexFromMusiclist(int index) {
    musiclist.removeAt(index);
  }

  void updateMusiclistAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    musiclist[index] = updateFn(_musiclist[index]);
  }

  void insertAtIndexInMusiclist(int index, String value) {
    musiclist.insert(index, value);
  }

  bool _isPlaying = true;
  bool get isPlaying => _isPlaying;
  set isPlaying(bool value) {
    _isPlaying = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
