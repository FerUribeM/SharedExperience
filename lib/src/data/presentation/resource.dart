class Resource<T> {
  final ResourceState state;
  final T? data;
  final String message;

  Resource({required this.state, required this.data, required this.message});
}

enum ResourceState { SUCCESS, ERROR }

Resource<T> setSuccess<T>(T value) {
  return Resource(state: ResourceState.SUCCESS, data: value, message: '');
}

Resource<T> setError<T>(String message) {
  return Resource(state: ResourceState.ERROR, message: message, data: null);
}
