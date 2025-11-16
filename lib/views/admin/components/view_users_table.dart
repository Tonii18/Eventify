import 'package:eventify/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';

class ViewUsersTable extends StatefulWidget {
  final double scale;
  const ViewUsersTable({super.key, required this.scale});

  @override
  State<StatefulWidget> createState() => _ViewUsersTable();
}

class _ViewUsersTable extends State<ViewUsersTable> {
  late final UserProvider userProvider;

  @override
  void initState() {
    super.initState();
    userProvider = UserProvider();
    userProvider.loadUsers();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<UserProvider>.value(
      value: userProvider,
      child: Consumer<UserProvider>(
        builder: (context, userProvider, _) {
          final users = userProvider.users;

          if (userProvider.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (users.isEmpty) {
            return const Center(child: Text("No hay usuarios"));
          }

          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];
              return Slidable(
                key: ValueKey(user.id),
                endActionPane: ActionPane(
                  motion: const ScrollMotion(),
                  children: [
                    SlidableAction(
                      onPressed: (_) async =>
                          await userProvider.activateUser(user.id!),
                      backgroundColor: Colors.green,
                      icon: Icons.check,
                      label: 'Activar',
                    ),
                    SlidableAction(
                      onPressed: (_) async =>
                          await userProvider.deactivateUser(user.id!),
                      backgroundColor: Colors.orange,
                      icon: Icons.block,
                      label: 'Desactivar',
                    ),
                    SlidableAction(
                      onPressed: (_) async {
                        final confirm = await showDialog<bool>(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Confirmar eliminación'),
                            content: Text(
                              '¿Estás seguro de que quieres eliminar a ${user.name}?',
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context, false),
                                child: const Text('Cancelar'),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(context, true),
                                child: const Text(
                                  'Eliminar',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ],
                          ),
                        );
                        if (confirm == true){
                          await userProvider.deleteUser(user.id!);
                        }
                      },
                      backgroundColor: Colors.red,
                      icon: Icons.delete,
                      label: 'Eliminar',
                    ),
                    // TODO : The edit slider is missing. SlidableAction(),
                  ],
                ),
                child: ListTile(
                  title: Text(user.name),
                  subtitle: Text(user.email),
                  trailing: Text(user.actived == 1 ? 'Activo' : 'Inactivo'),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
