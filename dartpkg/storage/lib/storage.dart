// abstract class Storage {
//   factory Storage.create(Directory root) {
//     return _Storage(root);
//   }
//
//   Future<List<int>> get(String file);
//
//   Future<void> del(String file);
// }
//
// class _Storage implements Storage {
//   final Directory root;
//
//   _Storage(this.root);
//
//   String _path(file) {
//     return join(root.path, file);
//   }
//
//   @override
//   Future<List<int>> get(String file) async {}
//
//   @override
//   Future<void> put(String file, List<int> data) async {}
//
//   @override
//   Future<void> del(String file) async {
//     await File(_path(file)).delete();
//   }
//
//   @override
//   Future<BlobWriter> create(String file) async {}
// }
