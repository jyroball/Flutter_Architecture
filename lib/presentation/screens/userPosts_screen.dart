import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/domain/entities/userPosts/userPosts_entity.dart';
import 'package:project2/presentation/bloc/userPosts_bloc.dart';
import 'package:project2/presentation/bloc/userPosts_event.dart';
import 'package:project2/presentation/bloc/userPosts_state.dart';
import 'package:project2/core/dependency_injection/injection_container.dart';

class UserPostsScreen extends StatelessWidget {
  const UserPostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<UserPostsBloc>(),
      child: Scaffold(
        appBar: AppBar(title: const Text('User Posts')),
        body: BlocBuilder<UserPostsBloc, UserPostsState>(
          builder: (context, state) {
            if (state is UserPostsInitial) {
              return Center(
                child: ElevatedButton(
                  onPressed: () {
                    context.read<UserPostsBloc>().add(FetchUserPosts());
                  },
                  child: const Text('Fetch User Posts'),
                ),
              );
            } else if (state is UserPostsLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is UserPostsLoaded) {
              return _buildUserPostsList(state.userPosts);
            } else if (state is UserPostsError) {
              return Center(child: Text('Error: ${state.message}'));
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }

  Widget _buildUserPostsList(List<UserPostsEntity> userPosts) {
    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: userPosts.length,
      itemBuilder: (context, index) {
        final user = userPosts[index];
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 8),
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(user.name,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold)),
                Text(user.email, style: const TextStyle(color: Colors.grey)),
                const SizedBox(height: 8),
                Text(
                  user.posts
                      .map((p) => '{ "title": "${p.title}", "body": "${p.body}" }')
                      .join(",\n"),
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
