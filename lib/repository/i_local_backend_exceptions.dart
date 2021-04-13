abstract class ILocalBackendExceptions {
  Future<void> error500();
  Future<void> error400();
  Future<void> error403();
}
