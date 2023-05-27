typedef InstanceCreator<T> = T Function();

class DependencyInjector {
  DependencyInjector();

  final _instanceMap = <Type, InstanceGenerator<Object>>{};

  void addAll(Map<Type, InstanceGenerator<Object>> intace) =>
      _instanceMap.addAll(intace);

  void register<T extends Object>(
    InstanceCreator<T> instance, {
    bool isSingleton = true,
  }) =>
      _instanceMap[T] = InstanceGenerator(instance, isSingleton);

  T get<T extends Object>() {
    final instance = _instanceMap[T]?.getInstance();
    if (instance != null && instance is T) return instance;
    throw Exception('[ERROR] -> Instance ${T.toString()} not found');
  }

  call<T extends Object>() => get<T>();
}

class InstanceGenerator<T> {
  T? _instance;
  bool _isFirstGet = false;

  final InstanceCreator<T> _instanceCreator;
  InstanceGenerator(this._instanceCreator, bool isSingleton)
      : _isFirstGet = isSingleton;

  T? getInstance() {
    if (_isFirstGet) {
      _instance = _instanceCreator();
      _isFirstGet = false;
    }
    return _instance ?? _instanceCreator();
  }
}
